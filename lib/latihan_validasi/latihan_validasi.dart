import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/db/database/db_helper.dart';
import 'package:ppkd_ju_android_dev_dede/models/user_login_model.dart';

class LoginScreenDB extends StatefulWidget {
  const LoginScreenDB({super.key});

  @override
  State<LoginScreenDB> createState() => _LoginScreenDBState();
}

class _LoginScreenDBState extends State<LoginScreenDB> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final passController = TextEditingController();

  void register() async {
    final user = userController.text.trim();
    final pass = passController.text;

    if (user.isEmpty || pass.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Isi semua field!')));
      return;
    }

    final pengguna = UserModelSQL(email: user, password: pass);

    bool success = await DBHelper().registerUser(pengguna);

    if (!mounted) return; // Menghindari linter warning: 'Don't use BuildContext across async gaps'

    if (success) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Akun berhasil dibuat')));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Email sudah terdaftar!')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.lock, size: 80, color: Colors.blue),
                    const SizedBox(height: 24),
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Silahkan masuk ke akun Anda',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),

                    const SizedBox(height: 32),
                    TextFormField(
                      controller: userController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email wajib diisi';
                        } else if (!value.contains('@')) {
                          return 'Format email tidak valid';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Masukkan email',
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),
                    TextFormField(
                      controller: passController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Masukkan password',
                        prefixIcon: const Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // =========================
                    // BUTTON
                    // =========================
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text('Data '),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Email: ${userController.text}'),
                                ],
                              ), // Column
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            HalamanTerimaKasih(
                                              email: userController.text,
                                            ),
                                      ), // MaterialPageRoute
                                    );
                                  },
                                  child: Text('Lanjutkan'),
                                ), // TextButtontton
                              ],
                            ), // AlertDialog
                          );
                        }
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HalamanTerimaKasih extends StatelessWidget {
  final String email;
  const HalamanTerimaKasih({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Konfirmasi')),
      body: Center(
        child: Text(
          'Terima kasih, $email',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ), // Text
      ), // Center
    ); // Scaffold
  }
}

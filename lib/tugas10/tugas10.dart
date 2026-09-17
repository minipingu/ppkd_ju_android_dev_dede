import 'package:flutter/material.dart';

class Tugas10 extends StatefulWidget {
  const Tugas10({super.key});

  @override
  State<Tugas10> createState() => _Tugas10State();
}

class _Tugas10State extends State<Tugas10> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final colorController = TextEditingController();

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
                    SizedBox(
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(100),
                        child: Image.asset('assets/images/nyawit2.png'),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Daftar My Sawit',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 123, 0),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const SizedBox(height: 32),
                    // Nama
                    TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Nama wajib diisi';
                        } else if (!value.contains(RegExp(r'^[a-zA-Z]+$'))) {
                          return 'Nama hanya boleh alfabet';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Nama',
                        hintText: 'Masukkan nama',
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    //Email
                    TextFormField(
                      controller: emailController,
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
                    //Phone
                    TextFormField(
                      controller: phoneNumberController,
                      decoration: InputDecoration(
                        labelText: 'Nomor Handphone (opsional)',
                        hintText: 'Masukkan Nomor (opsional)',
                        prefixIcon: const Icon(Icons.phone),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Warna Kesukaan
                    TextFormField(
                      controller: colorController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Warna kesukaan wajib diisi';
                        } else if (!value.contains(RegExp(r'^[a-zA-Z]+$'))) {
                          return 'Warna kesukaan hanya boleh alfabet';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Warna Kesukaan',
                        hintText: 'Misal: Oranye',
                        prefixIcon: const Icon(Icons.color_lens),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: .infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                title: Text('Ringkasan Data'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama: ${nameController.text}'),
                                    Text('Email: ${emailController.text}'),
                                    Text(
                                      'Nomor Handphone: ${phoneNumberController.text}',
                                    ),
                                    Text('Warna: ${colorController.text}'),
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
                                                nama: nameController.text,
                                                warna: colorController.text,
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
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: .w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
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
  final String nama;
  final String warna;
  const HalamanTerimaKasih({
    super.key,
    required this.nama,
    required this.warna,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Konfirmasi')),
      body: Center(
        child: Text(
          'Terima kasih, $nama warna sawit anda adalah $warna',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ), // Text
      ), // Center
    ); // Scaffold
  }
}

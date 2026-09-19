import 'package:flutter/material.dart';

class FormKopdes extends StatefulWidget {
  const FormKopdes({super.key});

  @override
  State<FormKopdes> createState() => _FormKopdesState();
}

class _FormKopdesState extends State<FormKopdes> {
  bool _obscurePass = false;

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passController = TextEditingController();
  final cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsetsGeometry.only(top: 10),
        child: Column(
          spacing: 16,
          children: [
            // Nama
            TextFormField(
              style: TextStyle(color: const Color.fromARGB(255, 255, 228, 228)),
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
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            //Email
            TextFormField(
              style: TextStyle(color: const Color.fromARGB(255, 255, 228, 228)),

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
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            //Phone
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nomor Handphone wajib diisi';
                } else if (!value.contains(RegExp(r'^[0-9]+$'))) {
                  return 'Nomor Handphone hanya boleh angka';
                }
                return null;
              },
              style: TextStyle(color: const Color.fromARGB(255, 255, 228, 228)),
              controller: phoneNumberController,
              decoration: InputDecoration(
                labelText: 'Nomor Handphone',
                hintText: 'Masukkan Nomor',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            // Warna Kesukaan
            TextFormField(
              style: TextStyle(color: const Color.fromARGB(255, 255, 228, 228)),
              obscureText: _obscurePass,
              controller: passController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password wajib diisi';
                } else if (!RegExp(r'^\S+$').hasMatch(value)) {
                  return 'Password tidak boleh ada spasi';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Masukan Password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscurePass = !_obscurePass;
                    });
                  },
                  icon: Icon(
                    !_obscurePass ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            TextFormField(
              style: TextStyle(color: const Color.fromARGB(255, 255, 228, 228)),
              obscureText: _obscurePass,
              controller: cityController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Asal kota kesukaan wajib diisi';
                } else if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                  return 'Hanya boleh berisi huruf dan spasi';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Asal Kota',
                hintText: 'Misal: Jakarta Utara',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

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
                            Text('Warna: ${passController.text}'),
                          ],
                        ), // Column
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Lanjutkan'),
                          ), // TextButtontton
                        ],
                      ), // AlertDialog
                    );
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text(
                  'Input',
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
    );
  }
}

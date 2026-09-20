import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/services/db_helper.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/models/manager_model.dart';

class FormKopdes extends StatefulWidget {
  final Function onAdd;
  final bool? readonly;

  const FormKopdes({super.key, required this.onAdd, this.readonly});

  @override
  State<FormKopdes> createState() => _FormKopdesState();
}

class _FormKopdesState extends State<FormKopdes> {
  bool _obscurePass = true;

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passController = TextEditingController();
  final cityController = TextEditingController();

  void register() async {
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final phone = phoneNumberController.text.trim();
    final password = passController.text;
    final city = cityController.text.trim();

    if (name.isEmpty ||
        email.isEmpty ||
        phone.isEmpty ||
        password.isEmpty ||
        city.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Isi semua donk 😡!')));
      return;
    }

    final manager = ManagerModel(
      name: name,
      email: email,
      phone: phone,
      password: password,
      city: city,
    );

    bool success = await DBHelper().registerUser(manager);

    if (!mounted) return;

    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Manager berhasil di daftarkan! 😊👍')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email atau handphone sudah terdaftar! 😒'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(20),
      child: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsetsGeometry.only(top: 10),
          child: Column(
            spacing: 16,
            children: [
              Text(
                widget.readonly == true
                    ? 'Data Manager Kopdes'
                    : 'Form Manager Kopdes',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 24,
                  fontWeight: .w600,
                ),
              ),
              // Nama
              TextFormField(
                readOnly: widget.readonly ?? false,
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 228, 228),
                ),
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
                readOnly: widget.readonly ?? false,
                style: TextStyle(
                  color: const Color.fromARGB(255, 197, 179, 179),
                ),
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
                readOnly: widget.readonly ?? false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nomor Handphone wajib diisi';
                  } else if (!value.contains(RegExp(r'^[0-9]+$'))) {
                    return 'Nomor Handphone hanya boleh angka';
                  }
                  return null;
                },
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 228, 228),
                ),
                controller: phoneNumberController,
                decoration: InputDecoration(
                  labelText: 'Nomor Handphone',
                  hintText: 'Masukkan Nomor',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              // Password
              TextFormField(
                readOnly: widget.readonly ?? false,
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 228, 228),
                ),
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
                      _obscurePass ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              //City
              TextFormField(
                readOnly: widget.readonly ?? false,
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 228, 228),
                ),
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
              if (widget.readonly != true)
                SizedBox(
                  width: .infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        register();
                        Navigator.pop(context);
                        widget.onAdd();
                        _formKey.currentState!.reset();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 114, 8, 0),
                    ),
                    child: const Text(
                      'Simpan',
                      style: TextStyle(
                        color: Color.fromARGB(255, 203, 203, 203),
                        fontWeight: .w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              if (widget.readonly != true)
                SizedBox(
                  width: .infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _formKey.currentState!.reset();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 189, 189, 189),
                    ),
                    child: const Text(
                      'Batal',
                      style: TextStyle(
                        color: Color.fromARGB(255, 75, 75, 75),
                        fontWeight: .w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

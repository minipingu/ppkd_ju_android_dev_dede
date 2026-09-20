import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/services/db_helper.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/models/manager_model.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/widgets/show_delete_manager.dart';

class FormKopdes extends StatefulWidget {
  final Function onAdd;
  final bool? readonly;
  final ManagerModel? manager;

  const FormKopdes({
    super.key,
    required this.onAdd,
    this.readonly,
    this.manager,
  });

  @override
  State<FormKopdes> createState() => _FormKopdesState();
}

class _FormKopdesState extends State<FormKopdes> {
  bool? readonly;
  bool _obscurePass = true;

  final _formKey = GlobalKey<FormState>();

  int? id;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passController = TextEditingController();
  final cityController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.readonly != null) {
      readonly = widget.readonly!;
    }

    if (widget.manager != null) {
      final manager = widget.manager!;
      id = manager.id;
      nameController.text = manager.name;
      emailController.text = manager.email;
      phoneNumberController.text = manager.phone;
      passController.text = manager.password;
      cityController.text = manager.city;
    }
  }

  void submit({bool? delete}) async {
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
      id: id,
      name: name,
      email: email,
      phone: phone,
      password: password,
      city: city,
    );

    if (delete == true) {
      DeleteManager().showDeleteManager(context, manager, () {
        Navigator.pop(context);
        widget.onAdd();
      });
      return;
    }

    bool success = widget.readonly != true
        ? await DBHelper().registerUser(manager)
        : await DBHelper().updateManager(manager);

    if (!mounted) return;

    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            widget.readonly == true
                ? 'Manager berhasil diperbarui! 😊👍'
                : 'Manager berhasil didaftarkan! 😊👍',
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            widget.readonly == true
                ? 'Gagal memperbarui data manager! 😒'
                : 'Email atau handphone sudah terdaftar! 😒',
          ),
        ),
      );
    }
  }

  final nameFocusNode = FocusNode();
  void focusNama() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      nameFocusNode.requestFocus();
    });
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
              Row(
                children: [
                  Expanded(
                    child: Text(
                      readonly == true
                          ? 'Data Manager Kopdes'
                          : 'Form Manager Kopdes',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 24,
                        fontWeight: .w600,
                      ),
                    ),
                  ),
                  if (widget.readonly == true)
                    IconButton(
                      onPressed: () {
                        submit(delete: true);
                      },
                      icon: Icon(
                        Icons.delete,
                        size: 30,
                        color: const Color.fromARGB(255, 139, 9, 0),
                      ),
                    ),
                ],
              ),
              // Nama
              TextFormField(
                focusNode: nameFocusNode,
                readOnly: readonly ?? false,
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
                  labelStyle: TextStyle(color: Colors.pinkAccent, fontSize: 18),
                  border: readonly == false || widget.readonly == null
                      ? OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )
                      : InputBorder.none,
                ),
              ),
              //Email
              TextFormField(
                readOnly: readonly ?? false,
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
                  labelStyle: TextStyle(color: Colors.pinkAccent, fontSize: 18),
                  hintText: 'Masukkan email',
                  border: readonly == false || widget.readonly == null
                      ? OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )
                      : InputBorder.none,
                ),
              ),
              //Phone
              TextFormField(
                readOnly: readonly ?? false,
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
                  labelStyle: TextStyle(color: Colors.pinkAccent, fontSize: 18),
                  hintText: 'Masukkan Nomor',
                  border: readonly == false || widget.readonly == null
                      ? OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )
                      : InputBorder.none,
                ),
              ),
              // Password
              TextFormField(
                readOnly: readonly ?? false,
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
                  labelStyle: TextStyle(color: Colors.pinkAccent, fontSize: 18),
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
                  border: readonly == false || widget.readonly == null
                      ? OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )
                      : InputBorder.none,
                ),
              ),
              //City
              TextFormField(
                readOnly: readonly ?? false,
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
                  labelStyle: TextStyle(color: Colors.pinkAccent, fontSize: 18),
                  hintText: 'Misal: Jakarta Utara',
                  border: readonly == false || widget.readonly == null
                      ? OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )
                      : InputBorder.none,
                ),
              ),

              SizedBox(
                width: .infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    if (readonly == true) {
                      setState(() {
                        readonly = false;
                      });
                      focusNama();
                    } else {
                      if (_formKey.currentState!.validate()) {
                        submit();
                        Navigator.pop(context);
                        widget.onAdd();
                        _formKey.currentState!.reset();
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 114, 8, 0),
                  ),
                  child: Text(
                    readonly != true ? 'Simpan' : 'Edit',
                    style: TextStyle(
                      color: Color.fromARGB(255, 203, 203, 203),
                      fontWeight: .w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

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
                    'Kembali',
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

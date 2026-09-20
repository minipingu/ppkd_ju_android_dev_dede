// import 'package:flutter/material.dart';

// class SheetEdit extends StatefulWidget {
//   final Function _refreshManagers;
//   const new({super.key, required this._refreshManagers});

//   @override
//   State<SheetEdit> createState() => _SheetEditState();
// }

// class _SheetEditState extends State<SheetEdit> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       // viewInsets.bottom memberikan padding setinggi keyboard virtual saat keyboard muncul
//       padding: EdgeInsets.only(
//         left: 20,
//         right: 20,
//         top: 20,
//         bottom: MediaQuery.of(context).viewInsets.bottom + 20,
//       ),
//       child: SingleChildScrollView(
//         child: Form(
//           key: _formKey,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Indikator garis pegangan (drag handle) di atas modal
//               Center(
//                 child: Container(
//                   width: 40,
//                   height: 4,
//                   margin: EdgeInsets.only(bottom: 16),
//                   decoration: BoxDecoration(
//                     color: Colors.grey[300],
//                     borderRadius: BorderRadius.circular(2),
//                   ),
//                 ),
//               ),
//               Row(
//                 children: [
//                   Icon(Icons.edit, color: Colors.blue),
//                   SizedBox(width: 8),
//                   Text(
//                     'Edit Pengguna',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 16),

//               // Input Email
//               TextFormField(
//                 controller: emailController,
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   prefixIcon: Icon(Icons.email),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.trim().isEmpty) {
//                     return 'Email tidak boleh kosong';
//                   }
//                   if (!value.contains('@')) {
//                     return 'Format email tidak valid';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 16),

//               // Input Password
//               TextFormField(
//                 controller: passwordController,
//                 obscureText: obscurePassword,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   prefixIcon: Icon(Icons.lock),
//                   suffixIcon: IconButton(
//                     icon: Icon(
//                       obscurePassword ? Icons.visibility : Icons.visibility_off,
//                     ),
//                     onPressed: () {
//                       // Memperbarui state lokal bottom sheet
//                       setModalState(() {
//                         obscurePassword = !obscurePassword;
//                       });
//                     },
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Password tidak boleh kosong';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 24),

//               // Tombol Simpan Perubahan
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(vertical: 14),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                   onPressed: () async {
//                     // Validasi form terlebih dahulu
//                     if (formKey.currentState!.validate()) {
//                       // 1. Buat model data baru dengan ID yang sama
//                       final updatedUser = UserModelsSQL(
//                         id: user.id,
//                         email: emailController.text.trim(),
//                         password: passwordController.text,
//                       );
//                       // 2. Tutup Modal Bottom Sheet
//                       Navigator.pop(sheetContext);
//                       // 3. Simpan perubahan ke SQLite
//                       final success = await DBHelper().updateUser(updatedUser);
//                       // 4. Cek apakah halaman masih aktif
//                       if (!mounted) return;
//                       // 5. Berikan feedback ke pengguna dan refresh list
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text(
//                             success
//                                 ? 'Data pengguna berhasil diperbarui'
//                                 : 'Gagal memperbarui data pengguna',
//                           ),
//                         ),
//                       );
//                       if (success) {
//                         widget._refreshManagers();
//                       }
//                     }
//                   },
//                   child: Text('Simpan Perubahan'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

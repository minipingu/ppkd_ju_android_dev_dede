// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:ppkd_ju_android_dev_dede/Tugas12-13/models/manager_model.dart';
// import 'package:ppkd_ju_android_dev_dede/Tugas12-13/services/db_helper.dart';
// import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/widgets/dialog_delete.dart';
// import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/widgets/sheet_edit.dart';

// class HomeScreenDay17 extends StatefulWidget {
//   const HomeScreenDay17({super.key});

//   @override
//   State<HomeScreenDay17> createState() => _HomeScreenDay17State();
// }

// class _HomeScreenDay17State extends State<HomeScreenDay17> {
//   late Future<List<ManagerModel>> _managersFuture;

//   @override
//   /// --------------------------------------------------------------------------
//   /// MODAL BOTTOM SHEET: Form Edit Pengguna
//   /// --------------------------------------------------------------------------
//   /// Menggunakan [showModalBottomSheet] untuk memunculkan lembar formulir edit dari bawah.
//   void _showEditBottomSheet(ManagerModel user) {
//     // Siapkan text controller yang sudah terisi data awal pengguna
//     final emailController = TextEditingController(text: user.email);
//     final passwordController = TextEditingController(text: user.password);
//     final formKey = GlobalKey<FormState>();
//     bool obscurePassword = true;

//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//       ),
//       builder: (sheetContext) {
//         // StatefulBuilder digunakan agar state di dalam bottom sheet
//         // (seperti toggle show/hide password) bisa di-update tanpa rebuild halaman utama
//         return SheetEdit(refreshManagers: _refreshManagers);
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Day 17 Home")),
//       body: Column(
//         children: [
//           Expanded(
//             // FutureBuilder menangani operasi asinkron secara otomatis
//             child: FutureBuilder<List<ManagerModel>>(
//               future: _managersFuture,
//               builder: (context, snapshot) {
//                 // Kondisi 1: Menunggu data selesai dimuat
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return const Center(child: CircularProgressIndicator());
//                 }

//                 // Kondisi 2: Terjadi error saat membaca database
//                 if (snapshot.hasError) {
//                   return Center(
//                     child: Text('Terjadi kesalahan: ${snapshot.error}'),
//                   );
//                 }

//                 // Kondisi 3: Data berhasil diambil tapi masih kosong
//                 if (!snapshot.hasData || snapshot.data!.isEmpty) {
//                   return const Center(child: Text('Tidak ada data pengguna.'));
//                 }

//                 // Kondisi 4: Data tersedia dan siap ditampilkan ke ListView
//                 final daftarPengguna = snapshot.data!;

//                 return ListView.builder(
//                   itemCount: daftarPengguna.length,
//                   itemBuilder: (context, index) {
//                     final user = daftarPengguna[index];
//                     return Card(
//                       child: ListTile(
//                         leading: const CircleAvatar(child: Icon(Icons.person)),
//                         title: Text(user.email),
//                         subtitle: Text('Password: ${user.password}'),
//                         trailing: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             // Tombol Edit -> Membuka Modal Bottom Sheet
//                             IconButton(
//                               onPressed: () => _showEditBottomSheet(user),
//                               icon: const Icon(Icons.edit, color: Colors.blue),
//                             ),
//                             // Tombol Delete -> Membuka Dialog Konfirmasi
//                             IconButton(
//                               onPressed: () => _showDeleteDialog(user),
//                               icon: const Icon(Icons.delete, color: Colors.red),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//           // Khusus saat debug mode: Tombol untuk melihat isi tabel SQLite secara visual
//           if (kDebugMode)
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => DatabaseList()),
//                 );
//               },
//               child: const Text("Lihat Database"),
//             ),
//         ],
//       ),
//     );
//   }
// }

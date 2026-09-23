import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/models/random_mbg.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/services/api_services.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/services/dio_client.dart';

class RandomEmbege extends StatefulWidget {
  const RandomEmbege({super.key});

  @override
  State<RandomEmbege> createState() => _RandomEmbegeState();
}

class _RandomEmbegeState extends State<RandomEmbege> {
  late final MbgService _apiService;
  late Future<List<Meal>> _mealsFuture;

  @override
  void initState() {
    super.initState();
    // Inisialisasi Dio client & ApiService Retrofit saat widget dipasang
    final dio = createDioClient();
    _apiService = MbgService(dio);
    // Memanggil API GET /Meals
    _mealsFuture = _apiService.getAllMeals();
  }

  // Method untuk memicu request ulang (refetch data)
  void _refreshMeals() {
    setState(() {
      _mealsFuture = _apiService.getAllMeals();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API', style: TextStyle(color: Colors.white)),
      ),
      body: FutureBuilder(
        future: _mealsFuture,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          // State 1: Menunggu respon (Loading)
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          // State 2: Terjadi error saat request data
          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.wifi_off, size: 64, color: Colors.grey),
                    const SizedBox(height: 16),
                    Text(
                      'Gagal memuat data:\n${snapshot.error}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.grey),
                    ), // Text
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: _refreshMeals,
                      child: const Text('Coba Lagi'),
                    ), // ElevatedButton
                  ],
                ), // Column
              ), // Padding
            ); // Center
          }

          // State 3: Respon sukses tetapi data kosong
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Tidak ada data post.'));
          }

          // State 4: Data berhasil dimuat
          final List<Meal> randomMeals = snapshot.data!;
          return ListView.builder(
            itemCount: randomMeals.length,
            itemBuilder: (context, index) {
              final List<Meal> meal = randomMeals;
              return Card(
                margin: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ), // EdgeInsets.symmetric
                child: ListTile(
                  leading: CircleAvatar(
                    // backgroundColor: AppColor.primaryColor,
                    child: Text(
                      '$meal.',
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  title: Text(
                    'aaaaa',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text('aaaaaaa'),
                ),
              ); // Card
            },
          ); // ListView.builder
        },
      ),
    );
  }
}

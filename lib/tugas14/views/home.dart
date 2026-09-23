import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/models/random_mbg.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/services/mbg_services.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/services/dio_client.dart';

class RandomEmbege extends StatefulWidget {
  const RandomEmbege({super.key});

  @override
  State<RandomEmbege> createState() => _RandomEmbegeState();
}

class _RandomEmbegeState extends State<RandomEmbege> {
  late final MBGService _embegeService;
  Future<RandomMbg>? _mbgFuture;

  @override
  void initState() {
    super.initState();
    final dio = createDioClient();
    _embegeService = MBGService(dio);
  }

  void _refreshMeals() {
    setState(() {
      _mbgFuture = _embegeService.getMBG();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Menu MBG apa hari ini? 🤔',
            style: TextStyle(
              color: Colors.black,
              fontStyle: .italic,
              fontSize: 24,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 500,
            child: FutureBuilder(
              future: _mbgFuture,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.wifi_off,
                            size: 64,
                            color: Colors.grey,
                          ),
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

                if (!snapshot.hasData || (snapshot.data!.meals).isEmpty) {
                  return const Center(child: Text('Tidak ada data post.'));
                }

                final RandomMbg randomMBG = snapshot.data!;
                return ListView.builder(
                  itemCount: randomMBG.meals!.length,
                  itemBuilder: (context, index) {
                    final MBG mbg = randomMBG.meals![index];
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        spacing: 20,
                        children: [
                          ElevatedButton(onPressed: () {}, child: Text('aa')),
                          Text(
                            '${mbg.strMeal}',
                            style: TextStyle(fontSize: 30, fontWeight: .w700),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.network('${mbg.strMealThumb}'),
                          ),
                        ],
                      ),
                    ); // Card
                  },
                ); // ListView.builder
              },
            ),
          ),
        ],
      ),
    );
  }
}

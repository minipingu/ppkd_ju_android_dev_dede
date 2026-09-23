import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/models/random_mbg.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/services/mbg_services.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/services/dio_client.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/views/widgets/button_search_mbg.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/views/widgets/loading_mohon_bersabar.dart';

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

  void _gachaMBG() {
    setState(() {
      _mbgFuture = _embegeService.getMBG();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: const Text(
            'MyMBG',
            style: TextStyle(
              color: Colors.black,
              fontSize: 36,
              fontWeight: .w600,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/my_mbg.jpeg', fit: .cover),
          ),
          FutureBuilder<RandomMbg>(
            future: _mbgFuture,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: LoadingMohonBersabar());
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
                          onPressed: _gachaMBG,
                          child: const Text('Coba Lagi'),
                        ), // ElevatedButton
                      ],
                    ), // Column
                  ), // Padding
                ); // Center
              }

              if (!snapshot.hasData || (snapshot.data!.meals).isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        'Menu MBG apa ya hari ini? 🤔',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                      ButtonSearchMbg(onPressed: () => _gachaMBG()),
                    ],
                  ),
                );
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
                        Text(
                          'Gacha Menu MBG',
                          style: TextStyle(fontSize: 30, fontWeight: .w700),
                        ),
                        Text(
                          '${mbg.strMeal}',
                          style: TextStyle(fontSize: 30, fontWeight: .w700),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.network('${mbg.strMealThumb}'),
                        ),
                        ButtonSearchMbg(onPressed: () => _gachaMBG()),
                      ],
                    ),
                  ); // Card
                },
              ); // ListView.builder
            },
          ),
        ],
      ),
    );
  }
}

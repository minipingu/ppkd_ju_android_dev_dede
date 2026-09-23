import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/models/random_mbg.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/services/mbg_services.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/services/dio_client.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/views/widgets/button_search_mbg.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/views/widgets/loading_mohon_bersabar.dart';

class RandomEmbege extends StatefulWidget {
  RandomEmbege({super.key});

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
          child: Text(
            'MyMBG',
            style: TextStyle(
              color: Colors.white,
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
          SizedBox(
            height: .infinity,
            width: .infinity,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(174, 0, 0, 0),
              ),
            ),
          ),
          FutureBuilder<RandomMbg>(
            future: _mbgFuture,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: LoadingMohonBersabar());
              }
              if (snapshot.hasError) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.wifi_off, size: 64, color: Colors.grey),
                        SizedBox(height: 16),
                        Text(
                          'Gagal memuat data:\n${snapshot.error}',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey),
                        ), // Text
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: _gachaMBG,
                          child: Text('Coba Lagi'),
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
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 22,
                        ),
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
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      spacing: 10,
                      children: [
                        Text(
                          'Menu hari ini?',
                          style: TextStyle(
                            fontSize: 30,
                            color: const Color.fromARGB(185, 255, 255, 255),
                          ),
                        ),
                        Text(
                          '${mbg.strMeal}',
                          textAlign: .center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: .w700,
                            color: Colors.white,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.network('${mbg.strMealThumb}'),
                        ),
                        Text(
                          'Category :',
                          textAlign: .center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: .w700,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '${mbg.strCategory}',
                          textAlign: .center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: .w700,
                            color: Colors.white,
                          ),
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

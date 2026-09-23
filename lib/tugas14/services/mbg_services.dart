import 'package:dio/dio.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/models/random_mbg.dart';
import 'package:retrofit/retrofit.dart';

part 'mbg_services.g.dart';

@RestApi(baseUrl: 'https://www.themealdb.com/api/json/v1/1/')
abstract class MBGService {
  factory MBGService(Dio dio, {String baseUrl}) = _MBGService;

  @GET('random.php')
  Future<RandomMbg> getMBG();
}

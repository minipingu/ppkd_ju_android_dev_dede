import 'package:dio/dio.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/models/random_mbg.dart';
import 'package:retrofit/retrofit.dart';

// File generasi otomatis retrofit_generator
part 'api_services.g.dart';

// @RestApi menentukan baseUrl default untuk seluruh endpoint di class ini
@RestApi(baseUrl: 'https://www.themealdb.com')
abstract class MbgService {
  factory MbgService(Dio dio, {String baseUrl}) = _MbgService;

  // Endpoint GET /posts untuk mengambil daftar semua data post
  @GET('/api/json/v1/1/random.php')
  Future<List<Meal>> getAllMeals();
}

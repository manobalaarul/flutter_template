import 'package:dio/dio.dart';

class DioClient {
  late Dio dio;

  DioClient() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://api.yourdomain.com",
        connectTimeout: const Duration(seconds: 30),
      ),
    );

    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }
}

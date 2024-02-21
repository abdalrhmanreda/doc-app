import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        receiveDataWhenStatusError: true,
      ),
    );
    debugPrint('Initial Dio');
  }

  static Future<Response>? getData({
    required String url,
    Map<String, dynamic>? query,
  }) {
    return dio.get(url, queryParameters: query);
  }
}

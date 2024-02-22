import 'package:dio/dio.dart';
import 'package:doctor_app/core/api/api_constant.dart';
import 'package:doctor_app/features/authentication/data/models/login_request_body.dart';
import 'package:doctor_app/features/authentication/data/models/login_response_body.dart';
import 'package:retrofit/http.dart';

import 'api_result.dart';

part 'api_service.g.dart';

/// retrofit
@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstant.login)
  Future<LoginResponseBody> login(
    /// in this i will send data to server api and return data
    @Body() LoginRequestBody loginRequestBody,

    /// body i will send to server
  );
}

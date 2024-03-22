import 'package:dio/dio.dart';
import 'package:doctor_app/core/api/api_constant.dart';
import 'package:doctor_app/features/authentication/data/models/login_request_body.dart';
import 'package:doctor_app/features/authentication/data/models/login_response_body.dart';
import 'package:doctor_app/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:doctor_app/features/sign_up/data/model/sign_up_respone_body.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

/// retrofit
@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstant.login)
  Future<LoginResponseBody> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstant.signup)
  Future<SignUpResponeBody> signup(
    @Body() SignUpRequestBody signUpRequestBody,
  );
}

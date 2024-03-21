import 'package:doctor_app/core/api/api_error_handler.dart';
import 'package:doctor_app/core/api/api_result.dart';
import 'package:doctor_app/core/api/api_service.dart';
import 'package:doctor_app/features/authentication/data/models/login_request_body.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(
    this._apiService,
  );

  Future<ApiResult> login(LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

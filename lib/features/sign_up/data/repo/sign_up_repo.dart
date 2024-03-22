import 'package:doctor_app/core/api/api_result.dart';
import 'package:doctor_app/core/api/api_service.dart';

import '../../../../core/api/api_error_handler.dart';
import '../model/sign_up_request_body.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);

  Future<ApiResult> signUp(SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.signup(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

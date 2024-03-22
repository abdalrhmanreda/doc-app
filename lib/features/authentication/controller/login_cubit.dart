import 'package:bloc/bloc.dart';
import 'package:doctor_app/features/authentication/controller/login_state.dart';
import 'package:doctor_app/features/authentication/data/models/login_request_body.dart';
import 'package:flutter/cupertino.dart';

import '../data/repos/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void userLogin(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final result = await _loginRepo.login(loginRequestBody);
    result.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (error) {
        emit(LoginState.failure(error.apiErrorModel.message ?? ''));
      },
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:doctor_app/features/sign_up/controller/sign_up_state.dart';
import 'package:doctor_app/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:flutter/cupertino.dart';

import '../data/repo/sign_up_repo.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  void userSignUp({required SignUpRequestBody signUpRequestBody}) async {
    emit(const SignUpState.loading());
    final result = await _signUpRepo.signUp(signUpRequestBody);
    result.when(
      success: (data) {
        emit(SignUpState.success(data));
      },
      failure: (error) {
        emit(SignUpState.failure(error.apiErrorModel.message ?? ''));
      },
    );
  }
}

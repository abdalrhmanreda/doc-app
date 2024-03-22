import 'package:doctor_app/core/constant/app_constant.dart';
import 'package:doctor_app/features/sign_up/controller/sign_up_cubit.dart';
import 'package:doctor_app/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/text_styles.dart';
import '../../../../core/components/custom_button.dart';
import '../../../../core/helpers/spacing.dart';
import '../../controller/sign_up_state.dart';
import '../../data/model/sign_up_request_body.dart';
import '../widgets/bloc_listener.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 30.h,
          ),
          child: BlocConsumer<SignUpCubit, SignUpState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return SizedBox(
                height: AppConstant.deviceHeight(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyles.font24BlueBold,
                    ),
                    Spacing.verticalSpace(15),
                    Text(
                      'Were excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                      style: TextStyles.font14GrayRegular,
                    ),
                    Spacing.verticalSpace(36),
                    const SignUpForm(),
                    Spacing.verticalSpace(40),
                    CustomButton(
                      onPressed: () {
                        validateThenSignUp(context);
                      },
                      text: 'Sign Up',
                    ),
                    const SignupBlocListener(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  validateThenSignUp(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().userSignUp(
            signUpRequestBody: SignUpRequestBody(
              email: context.read<SignUpCubit>().emailController.text,
              password: context.read<SignUpCubit>().passwordController.text,
              name: context.read<SignUpCubit>().nameController.text,
              phone: context.read<SignUpCubit>().phoneController.text,
              confirmPassword:
                  context.read<SignUpCubit>().passwordController.text,
              gender: 1,
            ),
          );
    }
  }
}

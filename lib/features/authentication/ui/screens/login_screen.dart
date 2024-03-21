import 'package:doctor_app/core/components/custom_button.dart';
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/features/authentication/ui/widgets/dont_have_account.dart';
import 'package:doctor_app/features/authentication/ui/widgets/email_and_password.dart';
import 'package:doctor_app/features/authentication/ui/widgets/login_bloc_listener.dart';
import 'package:doctor_app/features/authentication/ui/widgets/terms_and_condtions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/text_styles.dart';
import '../../controller/login_cubit.dart';
import '../../controller/login_state.dart';
import '../../data/models/login_request_body.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 30.h,
                ),
                child: Column(
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
                    Column(
                      children: [
                        const EmailAndPassword(),
                        Spacing.verticalSpace(24),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyles.font13BlueRegular,
                          ),
                        ),
                        Spacing.verticalSpace(40),
                        CustomButton(
                          onPressed: () {
                            validateThenDoLogin(context);
                          },
                          text: 'login',
                        ),
                        Spacing.verticalSpace(16),
                        const TermsAndConditionsText(),
                        Spacing.verticalSpace(60),
                        const DontHaveAccountText(),
                        const LoginBlocListener(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void validateThenDoLogin(BuildContext context) {
    final form = context.read<LoginCubit>().formKey.currentState;
    if (form!.validate()) {
      context.read<LoginCubit>().userLogin(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}

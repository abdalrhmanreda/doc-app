import 'package:doctor_app/config/colors/app_colors.dart';
import 'package:doctor_app/core/components/app_text_form_feild.dart';
import 'package:doctor_app/core/components/custom_button.dart';
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/features/authentication/controller/auth_cubit.dart';
import 'package:doctor_app/features/authentication/ui/widgets/dont_have_account.dart';
import 'package:doctor_app/features/authentication/ui/widgets/terms_and_condtions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../config/themes/text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
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
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          AppTextFormField(
                            hint: 'Email Address',
                            type: TextInputType.emailAddress,
                            controller: AuthCubit.get(context).emailController,
                            unFocusBorderColor: AppColors.kUnFocusBorderColor,
                            edgeInsetsGeometry: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 18.h,
                            ),
                          ),
                          Spacing.verticalSpace(20),
                          AppTextFormField(
                            isPassword: isPassword,
                            unFocusBorderColor: AppColors.kUnFocusBorderColor,
                            hint: 'Password',
                            type: TextInputType.emailAddress,
                            controller:
                                AuthCubit.get(context).passwordController,
                            suffixIcon: isPassword
                                ? Iconsax.eye_slash_outline
                                : Iconsax.eye_outline,
                            suffixPressed: () {
                              setState(() {
                                isPassword = !isPassword;
                              });
                            },
                          ),
                          Spacing.verticalSpace(20),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              'Forgot Password?',
                              style: TextStyles.font13BlueRegular,
                            ),
                          ),
                          Spacing.verticalSpace(40),
                          CustomButton(
                            onPressed: () {},
                            text: 'login',
                          ),
                          Spacing.verticalSpace(16),
                          const TermsAndConditionsText(),
                          Spacing.verticalSpace(60),
                          const DontHaveAccountText(),
                        ],
                      ),
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
}

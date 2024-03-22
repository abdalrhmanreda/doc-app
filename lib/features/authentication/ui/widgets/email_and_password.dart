import 'package:doctor_app/features/authentication/controller/login_cubit.dart';
import 'package:doctor_app/features/authentication/ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/components/app_text_form_feild.dart';
import '../../../../core/helpers/spacing.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isPassword = true;
  final bool hasLowerCase = false;

  final bool hasUpperCase = false;

  final bool hasNumber = false;

  final bool hasSpecialCharacter = false;

  final bool hasMinimumLength = false;
  late TextEditingController passwordController;
  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hint: 'Email Address',
            type: TextInputType.emailAddress,
            unFocusBorderColor: AppColors.kUnFocusBorderColor,
            edgeInsetsGeometry: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 18.h,
            ),
            controller: context.read<LoginCubit>().emailController,
            validate: (value) {
              if (value!.isEmpty) {
                return 'Please enter a valid email';
              }
            },
          ),
          Spacing.verticalSpace(20),
          AppTextFormField(
            isPassword: isPassword,
            controller: context.read<LoginCubit>().passwordController,
            unFocusBorderColor: AppColors.kUnFocusBorderColor,
            hint: 'Password',
            type: TextInputType.emailAddress,
            suffixIcon:
                isPassword ? Iconsax.eye_slash_outline : Iconsax.eye_outline,
            suffixPressed: () {
              setState(() {
                isPassword = !isPassword;
              });
            },
            validate: (value) {
              if (value!.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          Spacing.verticalSpace(24),
          PasswordValidation(
            hasLowerCase: hasLowerCase,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
            hasUpperCase: hasUpperCase,
            hasMinimumLength: hasMinimumLength,
          ),
        ],
      ),
    );
  }
}

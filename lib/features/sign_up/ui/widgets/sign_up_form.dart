import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/components/app_text_form_feild.dart';
import '../../../../core/helpers/spacing.dart';
import '../../controller/sign_up_cubit.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isPassword = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<SignUpCubit>().formKey,
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
              controller: context.read<SignUpCubit>().emailController,
              validate: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a valid email';
                }
              },
            ),
            Spacing.verticalSpace(20),
            AppTextFormField(
              isPassword: isPassword,
              controller: context.read<SignUpCubit>().passwordController,
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
            Spacing.verticalSpace(20),
            AppTextFormField(
              hint: 'Full Name',
              type: TextInputType.name,
              unFocusBorderColor: AppColors.kUnFocusBorderColor,
              edgeInsetsGeometry: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 18.h,
              ),
              controller: context.read<SignUpCubit>().nameController,
              validate: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a valid name';
                }
              },
            ),
            Spacing.verticalSpace(20),
            AppTextFormField(
              controller: context.read<SignUpCubit>().phoneController,
              unFocusBorderColor: AppColors.kUnFocusBorderColor,
              hint: 'phone number',
              type: TextInputType.phone,
              validate: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a valid password';
                }
              },
            ),
          ],
        ));
  }
}

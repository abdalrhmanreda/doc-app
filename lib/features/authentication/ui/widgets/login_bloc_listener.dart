import 'package:doctor_app/config/routes/routes_path.dart';
import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/features/authentication/controller/login_cubit.dart';
import 'package:doctor_app/features/authentication/controller/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../config/themes/text_styles.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.kPrimaryColor,
                ),
              ),
            );
          },
          success: (loginRespone) {
            context.pop(context);
            context.navigateToWidgetByNamed(context, RoutePath.home);
          },
          failure: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font14GrayRegular,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop(context);
            },
            child: Text(
              'Got it',
              style: TextStyles.font13BlueRegular,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:doctor_app/config/routes/routes_path.dart';
import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/features/authentication/controller/login_cubit.dart';
import 'package:doctor_app/features/authentication/controller/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              builder: (_) => SizedBox(
                height: 50.h,
                width: 50.w,
                child: const CircularProgressIndicator(),
              ),
            );
          },
          success: (loginRespone) {
            context.pop(context);
            context.navigateToWidgetByNamed(context, RoutePath.home);
          },
          failure: (error) {
            context.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error),
                duration: const Duration(seconds: 2),
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

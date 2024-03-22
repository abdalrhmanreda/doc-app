import 'package:doctor_app/config/routes/routes_path.dart';
import 'package:doctor_app/core/di/dependancy_injection.dart';
import 'package:doctor_app/features/authentication/ui/screens/login_screen.dart';
import 'package:doctor_app/features/home/ui/screens/home_screen.dart';
import 'package:doctor_app/features/onboarding/onboarding_screen.dart';
import 'package:doctor_app/features/sign_up/controller/sign_up_cubit.dart';
import 'package:doctor_app/features/sign_up/ui/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/authentication/controller/login_cubit.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // this argument is used to pass data from one screen to another
    final arguments = settings.arguments;
    switch (settings.name) {
      case RoutePath.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardScreen());
      case RoutePath.login:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case RoutePath.signUp:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (BuildContext context) => getIt<SignUpCubit>(),
                child: const SignUpScreen()));
      case RoutePath.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

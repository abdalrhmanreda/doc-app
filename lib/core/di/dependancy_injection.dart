import 'package:dio/dio.dart';
import 'package:doctor_app/core/api/dio_factory.dart';
import 'package:doctor_app/features/authentication/controller/login_cubit.dart';
import 'package:doctor_app/features/authentication/data/repos/login_repo.dart';
import 'package:doctor_app/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:get_it/get_it.dart';

import '../../features/sign_up/controller/sign_up_cubit.dart';
import '../api/api_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerSingleton<ApiService>(ApiService(dio));
  // login
  getIt.registerLazySingleton(() => LoginRepo(getIt()));
  getIt.registerFactory(() => LoginCubit(getIt()));
  // signup
  getIt.registerLazySingleton(() => SignUpRepo(getIt()));
  getIt.registerFactory(() => SignUpCubit(getIt()));

  // home

  // profile

  // appointment
}

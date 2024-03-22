import 'package:doctor_app/doc_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/routes/router.dart';
import 'core/di/dependancy_injection.dart';
import 'core/observer/blocObserver.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}

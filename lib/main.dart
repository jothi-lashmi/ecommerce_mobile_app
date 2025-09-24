import 'package:firebase_auth_project/firebase_options.dart';
import 'package:firebase_auth_project/injection.dart';
import 'package:firebase_auth_project/presentation/core/app_widget.dart';
import 'package:firebase_auth_project/presentation/core/router/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() async {
  try {
    configureInjection(Environment.prod);
    print('Injection configured ');
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions
          .currentPlatform, // only if you used FlutterFire CLI
    );
    getIt.registerSingleton<AppRouter>(AppRouter());
    runApp(const AppWidget());
  } catch (e) {
    print('Error in main file:$e');
  }
}

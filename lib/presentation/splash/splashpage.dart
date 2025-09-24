import 'package:auto_route/annotations.dart';
import 'package:firebase_auth_project/injection.dart';
import 'package:firebase_auth_project/presentation/core/router/app_router.dart';
import 'package:firebase_auth_project/presentation/splash/widget/splashpagebody.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        getIt<AppRouter>().replace(const OnBoardingRoute());
      }
      debugPrint('Now waiting for to move next screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Splashpagebody(),
    );
  }
}

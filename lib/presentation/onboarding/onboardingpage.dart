import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth_project/presentation/onboarding/widget/onboarding_body_screen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingBodyScreen();
  }
}

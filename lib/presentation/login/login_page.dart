import 'package:auto_route/annotations.dart';
import 'package:firebase_auth_project/presentation/login/widget/button_widget.dart';
import 'package:firebase_auth_project/presentation/login/widget/container_screen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSignIn = true;

  void toggleSwitch() {
    setState(() {
      isSignIn = !isSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Pink Header
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
            ),
            // White Card
            Transform.translate(
              // moves it upward like Positioned
              offset: const Offset(0, -80),
              child: ContainerScreen(isSignIn: isSignIn),
            ),
            ButtonWidget(isSignIn: isSignIn, onToggle: toggleSwitch),
          ],
        ),
      ),
    );
  }
}

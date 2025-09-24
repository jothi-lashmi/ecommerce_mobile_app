import 'package:firebase_auth_project/presentation/login/widget/input_widget.dart';
import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  final bool isSignIn;
  const ContainerScreen({super.key, required this.isSignIn});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
          // border: Border.all(color: Colors.black, width: 1),
        ),
        child: InputScreen(isSignIn: isSignIn),
      ),
    );
  }
}

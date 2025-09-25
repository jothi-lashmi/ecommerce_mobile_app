import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_project/injection.dart';
import 'package:firebase_auth_project/presentation/core/router/app_router.dart';
import 'package:firebase_auth_project/presentation/login/widget/forgot_password_widget.dart';
import 'package:firebase_auth_project/presentation/login/widget/snackbar.dart';
import 'package:firebase_auth_project/presentation/login/widget/text_field.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  final bool isSignIn;
  const InputScreen({super.key, required this.isSignIn});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void onSubmit() async {
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    if (widget.isSignIn) {
      debugPrint(
        'these are the following input feilds for signin :$email.$password',
      );
      try {
        await auth.signInWithEmailAndPassword(email: email, password: password);
        print('login success');
        showCustomSnackBar(context, 'Login Successful');
        await Future.delayed(const Duration(milliseconds: 500));

        getIt<AppRouter>().replace(const HomeRoute());
      } catch (e) {
        print('this is failure,$e');
        showCustomSnackBar(context, 'Error: $e', isError: true);
      }
    } else {
      debugPrint(
        'these are the following input feilds : $name ,$email.$password',
      );
      try {
        await auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        showCustomSnackBar(context, 'Account Created Successfully');
        await Future.delayed(const Duration(milliseconds: 500));
        getIt<AppRouter>().replace(const HomeRoute());
      } catch (e) {
        showCustomSnackBar(context, 'Error: $e', isError: true);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            widget.isSignIn ? 'SignIn' : "SignUP",
            style: TextStyle(
              fontSize: 24,
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        if (!widget.isSignIn)
          BuildTextField(
            label: 'Name',
            icon: Icons.person,
            controller: nameController,
          ),
        const SizedBox(height: 20),
        BuildTextField(
          label: 'Email',
          icon: Icons.mail,
          controller: emailController,
        ),
        const SizedBox(height: 20),
        BuildTextField(
          label: 'Password',
          icon: Icons.remove_red_eye,
          controller: passwordController,
        ),
        TextButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => ForgotPasswordWidget(),
            );
          },
          child: Text(widget.isSignIn ? 'forgot password?' : ''),
        ),
        SizedBox(
          width: 300,
          child: ElevatedButton(
            onPressed: onSubmit,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            child: Text(widget.isSignIn ? 'SignIn' : "SignUP"),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final bool isSignIn;
  final VoidCallback onToggle;
  const ButtonWidget({
    super.key,
    required this.isSignIn,
    required this.onToggle,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 140,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // foregroundColor: Colors.pink,
                  backgroundColor: Colors.white,
                ),
                child: Row(
                  children: [
                    // Icon(Icons.facebook),
                    Image.asset(
                      'assets/images/google-icon.png',
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 10),
                    Text("Google"),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20),
            SizedBox(
              width: 140,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // foregroundColor: Colors.pink,
                  backgroundColor: Colors.white,
                ),
                child: Row(
                  children: [
                    // Icon(Icons.facebook),
                    Image.asset(
                      'assets/images/facebook-icon.png',
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 10),
                    Text("Facebook"),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isSignIn ? "Don't have an account?" : "Already have an account?",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w100,
              ),
            ),
            TextButton(
              onPressed: onToggle,
              child: Text(isSignIn ? "SignUp" : "SignIn"),
            ),
          ],
        ),
      ],
    );
  }
}

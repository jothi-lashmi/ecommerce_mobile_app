import 'package:firebase_auth_project/presentation/login/widget/text_field.dart';
import 'package:flutter/material.dart';

class ConfirmWidgetPossword extends StatelessWidget {
  const ConfirmWidgetPossword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  width: 40,
                  height: 4,
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Text(
                  'Reset Possword',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  textAlign: TextAlign.center,
                  'Enter your new password',
                  style: TextStyle(color: Colors.grey[700], fontSize: 14),
                ),
                SizedBox(height: 20),
                // BuildTextField(
                //   label: 'New Password',
                //   icon: Icons.remove_red_eye,
                // ),
                SizedBox(height: 20),
                // BuildTextField(
                //   label: 'Confirm Password',
                //   icon: Icons.remove_red_eye,
                // ),
                SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    child: Text('Reset Password'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

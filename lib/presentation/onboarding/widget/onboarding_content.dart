import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
  });
  final String image, title, subtitle1, subtitle2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset(
              image,
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.6,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 20),
          Text(title, style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(height: 20),
          Text(
            subtitle1,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          // SizedBox(height: 20),
          Text(
            subtitle2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

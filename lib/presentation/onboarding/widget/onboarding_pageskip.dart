import 'package:flutter/material.dart';

class OnboardingPageskip extends StatelessWidget {
  final VoidCallback? onNext;
  final VoidCallback? onSkip;
  final bool isLastPage;

  const OnboardingPageskip({
    super.key,
    this.onNext,
    this.onSkip,
    this.isLastPage = false,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30.0,
      right: 24,
      child: Row(
        children: [
          if (!isLastPage)
            TextButton(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all(Colors.pink),
              ),
              onPressed: onSkip,
              child: const Text('Skip'),
            ),
          const SizedBox(width: 8),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.pink),
              foregroundColor: WidgetStateProperty.all(Colors.white),
            ),
            onPressed: onNext,
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}

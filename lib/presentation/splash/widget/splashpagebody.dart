import 'package:flutter/material.dart';

class Splashpagebody extends StatelessWidget {
  const Splashpagebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        // gradient: LinearGradient(
        //   colors: [Color.fromARGB(255, 228, 196, 243), Color(0xFFFFFFFF)],
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        // ),
      ),
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Lottie.asset(
                //   'assets/animation/Shopping bag.json',
                //   width: 350,
                //   height: 350,
                //   fit: BoxFit.contain,
                //   repeat: true,
                // ),
                Image.asset(
                  'assets/images/shopping_logo.png',
                  width: 200,
                  height: 200,
                ),
                // const SizedBox(height: 20),
                // AnimatedTextKit(
                //   totalRepeatCount: 1,
                //   animatedTexts: [
                //     TyperAnimatedText(
                //       'SHOPPING APP',
                //       textStyle: Theme.of(context).textTheme.bodyLarge,
                //       speed: const Duration(milliseconds: 150),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),

          // Bottom fixed text
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),

              // child: Text(
              //   'Devloped by Jothi ',
              //   style: TextStyle(fontSize: 13.0, color: Colors.pink),
              // ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Devloped by ',
                    style: TextStyle(fontSize: 13.0, color: Colors.pink),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Jothi Training ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

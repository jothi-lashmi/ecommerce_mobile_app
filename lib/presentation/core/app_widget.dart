import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth_project/injection.dart';
import 'package:firebase_auth_project/presentation/core/router/app_router.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late final AppRouter router;

  @override
  void initState() {
    super.initState();
    router = getIt<AppRouter>();

    // This ensures it's only triggered on first startup or hot restart
    WidgetsBinding.instance.addPostFrameCallback((_) {
      router.replace(const SplashRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    // final router = getIt<AppRouter>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.light(
          // primary: Colors.blueAccent,
          // secondary: Colors.black,
          // surface: Colors.white,
          primary: Colors.pink, // Soft Indigo
          secondary: Color(0xFFA5B4FC), // Lavender Gray
          surface: Color(0xFFF9FAFB), // Misty White
          onPrimary: Color(0xFFFFFFFF), // Text on Primary buttons
          onSecondary: Color(0xFF374151), // Text on Secondary buttons
          onSurface: Color(0xFF374151), // Main Text Color
        ),
        textTheme: TextTheme(
          displayMedium: TextStyle(
            fontFamily: 'Poppins-Light',
            color: Color(0xFFF9FAFB),
            fontSize: 48.0,
            fontWeight: FontWeight.w600,
          ),
          displayLarge: TextStyle(
            fontFamily: 'Poppins-Light',
            color: Color(0xFFF9FAFB),
            fontSize: 36.0,
            fontWeight: FontWeight.w600,
          ),
          displaySmall: TextStyle(
            fontFamily: 'Poppins-Light',
            color: Color.fromARGB(255, 190, 51, 255),
            fontSize: 28.0,
            fontWeight: FontWeight.w600,
          ),
          bodySmall: TextStyle(
            fontFamily: 'Poppins-Light',
            color: Color(0xFF374151),
            fontSize: 12.0,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Poppins-Light',
            color: Color(0xFF374151),
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
            color: Color(0xFF374151),
            fontSize: 24.0,
            fontWeight: FontWeight.w900,
            fontFamily: 'Poppins-Light',
          ),
        ),
      ),
      routerDelegate: AutoRouterDelegate(router),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth_project/presentation/home/widget/bottom_navigation_widget.dart';
import 'package:firebase_auth_project/presentation/home/widget/home_page_content.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: HomePageContent(),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}

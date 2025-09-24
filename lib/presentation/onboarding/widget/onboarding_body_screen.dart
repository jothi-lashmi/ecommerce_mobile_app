import 'package:firebase_auth_project/injection.dart';
import 'package:firebase_auth_project/presentation/core/router/app_router.dart';
import 'package:firebase_auth_project/presentation/onboarding/widget/image_widget.dart';
import 'package:firebase_auth_project/presentation/onboarding/widget/onboarding_content.dart';
import 'package:firebase_auth_project/presentation/onboarding/widget/onboarding_pageskip.dart';
import 'package:firebase_auth_project/presentation/onboarding/widget/text_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingBodyScreen extends StatefulWidget {
  const OnBoardingBodyScreen({super.key});

  @override
  State<OnBoardingBodyScreen> createState() => _OnBoardingBodyScreenState();
}

class _OnBoardingBodyScreenState extends State<OnBoardingBodyScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void skip() {
    getIt<AppRouter>().replace(const LoginRoute());
  }

  void next() {
    if (_currentPage < 4) {
      debugPrint('current page is $_currentPage');
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      skip();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                OnBoardingContent(
                  image: PImages.onBoardingImage1,
                  title: PTexts.welcomeTitle1,
                  subtitle1: PTexts.welcomeSubtitle1,
                  subtitle2: PTexts.welcomeSubtitle2,
                ),
                OnBoardingContent(
                  image: PImages.onBoardingImage2,
                  title: PTexts.chooseProductTitle1,
                  subtitle1: PTexts.chooseProductSubtitle1,
                  subtitle2: PTexts.chooseProductSubtitle2,
                ),
                OnBoardingContent(
                  image: PImages.onBoardingImage3,
                  title: PTexts.shoppingTitle1,
                  subtitle1: PTexts.shoppingSubtitle1,
                  subtitle2: PTexts.shoppingSubtitle2,
                ),
                OnBoardingContent(
                  image: PImages.onBoardingImage4,
                  title: PTexts.askQuestionTitle1,
                  subtitle1: PTexts.askQuestionSubtitle1,
                  subtitle2: PTexts.askQuestionSubtitle2,
                ),
                OnBoardingContent(
                  image: PImages.onBoardingImage5,
                  title: PTexts.deliverTitle1,
                  subtitle1: PTexts.deliverSubtitle1,
                  subtitle2: PTexts.deliverSubtitle2,
                ),
              ],
            ),
            OnboardingPageskip(
              onNext: () {
                next();
              },
              onSkip: () {
                // _pageController.jumpToPage(4);
                skip();
              },
              isLastPage: _currentPage == 4,
            ),
          ],
        ),
      ),
    );
  }
}

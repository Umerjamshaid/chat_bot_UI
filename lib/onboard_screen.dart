import 'package:bot/Wigidts/bottom_banner.dart';
import 'package:bot/Wigidts/onboarding_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  static final PageController _pageController = PageController(initialPage: 0);
  final List<Widget> _onBoardingPages = [
    OnboardingCard(image: "assets/images/onboarding2.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // For Appbar transparcies ====> https://stackoverflow.com/questions/53080186/make-appbar-transparent-and-show-background-image-which-is-set-to-whole-screen
      extendBodyBehindAppBar: true,
      // backgroundColor: const Color.fromARGB(255, 248, 246, 246),
      appBar: AppBar(
        title: Image.asset('assets/images/onboarding.png'),
        // For Appbar transparcies ...
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: _onBoardingPages,
              ),
            ),
            SmoothPageIndicator(controller: _pageController, count: 3),
          ],
        ),
      ),
    );
  }
}

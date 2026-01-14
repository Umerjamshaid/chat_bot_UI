// import 'package:bot/Wigidts/onboarding_card.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class OnboardScreen extends StatefulWidget {
//   const OnboardScreen({super.key});

//   @override
//   State<OnboardScreen> createState() => _OnboardScreenState();
// }

// class _OnboardScreenState extends State<OnboardScreen> {
//   static final PageController _pageController = PageController(initialPage: 0);
//   final List<Widget> _onBoardingPages = [
//     OnboardingCard(
//       image: 'assets/images/onboarding2.png',
//       title: 'Start free Conversation',
//       description:
//           'No login required for get started chat with our AI powered chatbot. Feel free to ask what you want to know.',
//       buttonText: 'Next',
// //       onPressed: () {
//         _pageController.animateToPage(
//           1,
//           duration: Durations.long1,
//           curve: Curves.easeIn,
//         );
// //       },
//     ),
//     OnboardingCard(
//       image: 'assets/images/onboarding3.png',
//       title: 'leave your voice instantly',
//       description:
//           'No login required for get started chat with our AI powered chatbot. Feel free to ask what you want to know.',
//       buttonText: 'Next',
//       onPressed: () {},
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // For Appbar transparcies ====> https://stackoverflow.com/questions/53080186/make-appbar-transparent-and-show-background-image-which-is-set-to-whole-screen
//       extendBodyBehindAppBar: true,
//       // backgroundColor: const Color.fromARGB(255, 248, 246, 246),
//       appBar: AppBar(
//         title: Image.asset('assets/images/onboarding.png'),
//         // For Appbar transparcies ...
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 50.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               child: PageView(
//                 controller: _pageController,
//                 children: _onBoardingPages,
//               ),
//             ),
//             SmoothPageIndicator(
//               controller: _pageController,
//               count: _onBoardingPages.length,
//               effect: ExpandingDotsEffect(
//                 activeDotColor: Color(0xFF1A1A4B),
//                 dotColor: Color(0xFF9F9EB7),
//               ),
//               onDotClicked: (index) {
//                 _pageController.animateToPage(
//                   index,
//                   duration: Durations.long1,
//                   curve: Curves.easeIn,
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:bot/Wigidts/bottom_banner.dart';
import 'package:bot/Wigidts/onboarding_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  void _nextPage() => _pageController.nextPage(
    duration: const Duration(milliseconds: 400),
    curve: Curves.easeInOut,
  );

  final List<Widget> _pages = [
    OnboardingCard(
      image: 'assets/images/onboarding2.png',
      title: 'Start free Conversation',
      description:
          'No login required for get started chat with our AI powered chatbot. Feel free to ask what you want to know.',
      buttonText: 'Next',
      onPressed: () {}, // handled globally
    ),
    OnboardingCard(
      image: 'assets/images/onboarding3.png',
      title: 'Leave your voice instantly',
      description:
          'No login required for get started chat with our AI powered chatbot. Feel free to ask what you want to know.',
      buttonText: 'Next',
      onPressed: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Image.asset('assets/images/onboarding.png'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // 1. scrollable content
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: _pages.length,
                    itemBuilder: (_, i) => _pages[i],
                  ),
                ),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: _pages.length,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Color(0xFF1A1A4B),
                    dotColor: Color(0xFF9F9EB7),
                  ),
                  onDotClicked: (i) => _pageController.animateToPage(
                    i,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  ),
                ),
              ],
            ),
          ),

          // 2. sticky auth banner (keyboard-aware)
          Align(
            alignment: Alignment.bottomCenter,
            child: AuthButtonsSection(
              onGoogleSignIn: () => print('google'),
              onEmailSignUp: () => print('email'),
              onLogin: () => print('login'),
            ),
          ),
        ],
      ),
    );
  }
}

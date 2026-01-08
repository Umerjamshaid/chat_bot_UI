import 'package:bot/Wigidts/bottom_banner.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Image.asset('assets/images/onboarding.png')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Start free Conversation',
                        style: GoogleFonts.poppins(
                          fontSize: 43,
                          height: 1.4,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1A1A4B),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),

              child: Text(
                'No login required for get started chat with our AI powered chatbot. Feel free to ask what you want to know.',
                // textAlign: TextAlign.center,
                style: GoogleFonts.onest(
                  fontSize: 16,
                  height: 1.2,
                  color: Color(0xFF1F1E58),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Image.asset(
                'assets/images/onboarding2.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            // 👇 Just add this at the bottom!
            AuthButtonsSection(
              onGoogleSignIn: () {
                // What happens when user taps Google button
                print('Google Sign In clicked');
                // Navigator.push(...) or your auth logic
              },
              onEmailSignUp: () {
                // What happens when user taps Email button
                print('Email Sign Up clicked');
                // Navigate to email signup screen
              },
              onLogin: () {
                // What happens when user taps Login button
                print('Login clicked');
                // Navigate to login screen
              },
            ),
          ],
        ),
      ),
    );
  }
}

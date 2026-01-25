import 'dart:async';

import 'package:bot/onboard_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Starting a Timer
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your logo image
            Padding(
              padding: const EdgeInsets.only(left: 41),
              child: Image.asset(
                'assets/images/bot_splash.png',
                width: 200,
                height: 200,
              ),
            ),

            Spacer(), // Pushes version text to bottom
            // Version and creator info at bottom
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.code, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      'Made by Umer • v1.0.0',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 30), // Bottom padding
              ],
            ),
          ],
        ),
      ),
    );
  }
}

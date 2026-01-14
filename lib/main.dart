import 'package:bot/Splash.dart';
import 'package:bot/onboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // first screen
      routes: {
        '/': (_) => const SplashScreen(), // your choice
        '/onboard': (_) => const OnboardScreen(), // banner lives here
      },
    );
  }
}

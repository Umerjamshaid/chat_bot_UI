import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(titleSpacing: 34),

      body: Column(
        children: [
          Text(
            'Create an account',
            style: TextStyle(
              fontFamily: "NeurialGrotesk",
              fontSize: 24,
              height: 1.4,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF1A1A4B),
            ),
          ),
        ],
      ),
    );
  }
}

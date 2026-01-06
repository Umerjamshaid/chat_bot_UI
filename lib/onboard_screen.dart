import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Image.asset('assets/images/onboarding.png')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Text(
          'Start free Conversation',
          style: GoogleFonts.poppins(
            fontSize: 43,
            height: 1.4,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

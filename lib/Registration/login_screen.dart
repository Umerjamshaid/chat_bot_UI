import 'package:bot/Wigidts/CustomEmailField.dart';
import 'package:bot/Wigidts/CustomNameField.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bot/Wigidts/onboarding_card.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key}); // ← no parameters

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(titleSpacing: 34),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // TITLE
              Text(
                'Create an account',
                style: const TextStyle(
                  fontFamily: "NeurialGrotesk",
                  fontSize: 40,
                  height: 1.4,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF1A1A4B),
                ),
              ),
              const SizedBox(height: 5),
              // DESCRIPTION
              Text(
                'Sign for a free account. Get easier than search engines results.',
                style: GoogleFonts.onest(
                  fontSize: 16,
                  height: 1.2,
                  color: const Color(0xFF1F1E58),
                ),
              ),
              const SizedBox(height: 24),
              CustomNameField(controller: _nameController),
              const SizedBox(height: 16),
              CustomEmailField(controller: _emailController),
            ],
          ),
        ),
      ),
    );
  }
}

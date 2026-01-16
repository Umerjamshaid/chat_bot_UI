import 'package:bot/Validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomEmailField extends StatelessWidget {
  // Controllers
  final TextEditingController controller;
  final String? hintText;
  final String? lableText;
  final String? Function(String?)? validator;

  const CustomEmailField({
    Key? key,
    required this.controller,
    this.hintText = 'Enter your email',
    this.lableText = 'Email',
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,

      decoration: InputDecoration(
        labelText: lableText,
        hintText: hintText,

        prefixIcon: Icon(Ionicons.mail_outline, color: Color(0xFF5B5AF7)),

        filled: true,
        fillColor: Color(0xFFEEF0FF),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Color(0xFF5B5AF7).withValues(alpha: 0.3),
            width: 1.5,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Color(0xFF5B5AF7), width: 2.0),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.red.withValues(alpha: 0.5),
            width: 1.5,
          ),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),

        labelStyle: TextStyle(color: Color(0xFF5B5AF7)),
        hintStyle: TextStyle(color: Color(0xFF5B5AF7).withValues(alpha: 0.5)),

        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),

      // Text color for typing --
      style: TextStyle(
        color: Color(0xFF5B5AF7), // ✅ Purple text
      ),

      validator: validator ?? Validators.validateEmail,
    );
  }
}

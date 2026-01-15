import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  // Controllers
  final TextEditingController controller;
  final String? hintText;
  final String? lableText;
  final String? Function(String?)? validator;

  const CustomPasswordField({
    Key? key,
    required this.controller,
    this.hintText = 'Enter your Password',
    this.lableText = 'Password',
    this.validator, // User can provide their own
  }) : super(key: key);

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField();
  }
}

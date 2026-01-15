import 'package:bot/Validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
  bool _isObscured = true; // Track if password is hidden

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _isObscured,
      decoration: InputDecoration(
        labelText: widget.lableText,
        hintText: widget.hintText,
        prefixIcon: Icon(Ionicons.lock_closed_outline),
        // Toggle button to show/hide password
        suffixIcon: IconButton(
          icon: Icon(
            _isObscured ? Ionicons.eye_off_outline : Ionicons.eye_off_outline,
          ),
          onPressed: () {
            setState(() {
              _isObscured = !_isObscured; // Toggle visibility
            });
          },
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      validator: widget.validator ?? Validators.validatePassword,
    );
  }
}

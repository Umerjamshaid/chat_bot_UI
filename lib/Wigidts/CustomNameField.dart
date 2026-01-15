import 'package:bot/Validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomNameField extends StatelessWidget {
  // Controllers
  final TextEditingController controller;
  final String? hintText;
  final String? lableText;
  final String? Function(String?)? validator;

  const CustomNameField({
    Key? key,
    required this.controller,
    this.hintText = 'Enter your Name',
    this.lableText = 'Name',
    this.validator, // User can provide their own
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.name,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        labelText: lableText,
        hintText: hintText,
        prefixIcon: Icon(Ionicons.mail_outline),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),

      // Use custom validator if provided, otherwise use default
      validator: validator ?? Validators.validateName,
    );
  }
}

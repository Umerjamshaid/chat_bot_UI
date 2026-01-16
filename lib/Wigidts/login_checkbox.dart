import 'package:flutter/material.dart';

class RememberLoginCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  const RememberLoginCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: const Color(0xFF10B981),
            checkColor: Colors.white,
            side: const BorderSide(color: Color(0xFFD1D5DB), width: 1.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          'Remember login info',
          style: TextStyle(
            fontSize: 14,
            color: const Color(0xFF6B7280),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

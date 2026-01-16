import 'package:flutter/material.dart';

class PasswordStrengthIndicator extends StatelessWidget {
  final bool isStrong;
  final VoidCallback? onResetPassword;

  const PasswordStrengthIndicator({
    super.key,
    required this.isStrong,
    this.onResetPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                isStrong ? Icons.check_circle : Icons.error_outline,
                size: 18,
                color: isStrong
                    ? const Color(0xFF10B981)
                    : const Color(0xFFEF4444),
              ),
              const SizedBox(width: 6),
              Text(
                isStrong ? 'Strong password' : 'Weak password',
                style: TextStyle(
                  fontSize: 13,
                  color: isStrong
                      ? const Color(0xFF10B981)
                      : const Color(0xFFEF4444),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          if (onResetPassword != null)
            TextButton(
              onPressed: onResetPassword,
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: const Text(
                'Reset password',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xFFEF4444),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

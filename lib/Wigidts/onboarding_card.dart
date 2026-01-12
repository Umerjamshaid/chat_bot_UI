import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingCard extends StatelessWidget {
  final String image, title, description, buttonText;
  final Function onPressed;

  const OnboardingCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.80,
      width: MediaQuery.sizeOf(context).width,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Column(
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 40,
                    height: 1.4,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1A1A4B),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: GoogleFonts.onest(
                    fontSize: 16,
                    height: 1.2,
                    color: const Color(0xFF1F1E58),
                  ),
                ),
                const SizedBox(height: 45),
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Image.asset(
                    image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            MaterialButton(
              minWidth: 200,
              onPressed: () => onPressed(),
              color: Color(0xFF5956FC),
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }
}

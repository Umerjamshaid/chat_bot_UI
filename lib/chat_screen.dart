import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(0.8),
              child: Text(
                'rak-GPT',
                style: TextStyle(
                  fontFamily: "NeurialGrotesk",
                  fontSize: 16,
                  height: 1.4,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFF1A1A4B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

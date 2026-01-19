import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isTyping = false;

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
        actions: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xFF5956FC),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            ),
            child: Text('Login', style: TextStyle(fontSize: 15)),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2, vertical: 8)),
        ],
      ),
      drawer: Drawer(),
      //Drawer end
      body: Column(
        children: [
          Image.asset('assets/images/bot1.png', width: 200, height: 100),

          SizedBox(height: 20),

          Text(
            'Hello, Boss!',
            style: TextStyle(
              fontFamily: "NeurialGrotesk",
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: const Color(0xFF1A1A4B),
            ),
          ),

          SizedBox(height: 8),

          Text(
            'Am Ready For Help You',
            style: TextStyle(
              fontFamily: "NeurialGrotesk",
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF1A1A4B),
            ),
          ),
          Text(
            'Ask me anything what\'s on your mind. Am here to assist you!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "NeurialGrotesk",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 15),

          //Chips = little Tags on the screen
          // Wrap(
          //   spacing: 5,
          //   runSpacing: 5,
          //   children: [
          //     Chip(
          //       label: Text('HTML'),
          //       backgroundColor: Color(0xFFF5F5F5),
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(20),
          //       ),
          //       padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 5),
          //     ),
          //     Chip(
          //       label: Text('SS'),
          //       labelStyle: TextStyle(fontSize: 8),
          //       avatar: CircleAvatar(radius: 10.0, child: Text('C')),
          //       backgroundColor: Color.fromARGB(0, 23, 42, 214),
          //       padding: EdgeInsets.symmetric(horizontal: 2, vertical: 0.12),
          //     ),
          //   ],
          // ),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: <Widget>[
              Chip(
                label: Text('using HTML'),
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                labelStyle: TextStyle(fontSize: 10.0),
                backgroundColor: Colors.blue.shade100,
              ),
              Chip(
                label: Text('using CSS'),
                // avatar: CircleAvatar(
                //   radius: 12.0,
                //   child: Icon(Icons.star, size: 16),
                // ),
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                labelStyle: TextStyle(fontSize: 10.0),
                backgroundColor: Colors.green.shade100,
              ),
              Chip(
                label: Text('using JS'),
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                labelStyle: TextStyle(fontSize: 10.0),
                backgroundColor: Colors.orange.shade100,
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Left button - Purple mic
                FloatingActionButton(
                  mini: true, // Makes it smaller
                  onPressed: () {},
                  backgroundColor: Color(0xFF5956FC),
                  child: Icon(Icons.mic, color: Colors.white, size: 20),
                ),

                SizedBox(width: 12),
                // Text field in the middle :)
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Ask what\'s on your mind...',
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none, // No border line
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),
                // Right button - Green send
                FloatingActionButton(
                  mini: true, // Makes it smaller
                  onPressed: () {},
                  backgroundColor: Color(0xFF5956FC),
                  child: Icon(Icons.send, color: Colors.white, size: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

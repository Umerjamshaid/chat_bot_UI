import 'package:bot/Registration/login_screen.dart';
import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:chat_bubbles/bubbles/bubble_normal_audio.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isTyping = false;
  Duration duration = new Duration();
  Duration position = new Duration();
  bool isPlaying = false;
  bool isLoading = false;
  bool isPause = false;

  void _changeSeek(double value) {
    setState(() {
      position = Duration(seconds: value.toInt());
    });
  }

  void _playAudio() {
    setState(() {
      isPlaying = !isPlaying;
      isPause = !isPause;
    });
  }

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
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => LoginScreen()),
              );
            },
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
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            // Top padding for status bar
            SizedBox(height: 50),

            // Search bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search chat history',
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(Icons.search, color: Colors.grey.shade600),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.blue.shade200,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.blue.shade200,
                      width: 1,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
            ),

            // Menu items
            ListTile(
              leading: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.blue.shade700,
                  size: 20,
                ),
              ),
              title: Text(
                'Rak-GPT',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              onTap: () {},
            ),

            ListTile(
              leading: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.tune, color: Colors.grey.shade700, size: 20),
              ),
              title: Text(
                'Customize Feed',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              trailing: Icon(Icons.chevron_right, color: Colors.grey),
              onTap: () {},
            ),

            ListTile(
              leading: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.public,
                  color: Colors.grey.shade700,
                  size: 20,
                ),
              ),
              title: Text(
                'Community',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {},
            ),

            Divider(height: 30),

            // Recent Chats Header
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent Chats',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            // Chat history list
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _buildChatTile('Web Page Design - CSS/HTML/...'),
                  _buildChatTile('AI Impact On UI/UX Design'),
                  _buildChatTile('Web Page Design - CSS/HTML/...'),
                  _buildChatTile('AI Impact On UI/UX Design'),
                  Divider(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      'Last Month',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  _buildChatTile('Web Page Design - CSS/HTML/...'),
                  _buildChatTile('AI Impact On UI/UX Design'),
                ],
              ),
            ),

            // Bottom profile section
            Divider(height: 1),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green.shade100,
                child: Text(
                  'W',
                  style: TextStyle(
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                'Wow Rakibul',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              trailing: Icon(Icons.more_horiz, color: Colors.grey),
              onTap: () {},
            ),
          ],
        ),
      ),
      //Drawer end
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 80),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/bot1.png',
                    width: 200,
                    height: 100,
                  ),

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
                    spacing: 8.0, // Space between chips
                    runSpacing: 8.0, // Space between rows
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.blue.shade300,
                            width: 1.5,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 4,
                          ),
                        ),
                        child: Text(
                          'using HTML',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.blue.shade700,
                          ),
                        ),
                      ),

                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.green.shade300,
                            width: 1.5,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 4,
                          ),
                        ),
                        child: Text(
                          'using CSS',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.green.shade700,
                          ),
                        ),
                      ),

                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.orange.shade300,
                            width: 1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 4,
                          ),
                        ),
                        child: Text(
                          'using JS',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.orange.shade700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  BubbleNormal(
                    text: 'Design a website using HTML, CSS and JS',
                    isSender: false, // Right side
                    color: Color.fromARGB(255, 223, 219, 219), // Purple color
                    tail: true,
                    textStyle: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 59, 46, 180),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  BubbleNormalAudio(
                    color: Color(0xFF5956FC),
                    duration: duration.inSeconds.toDouble(),
                    position: position.inSeconds.toDouble(),
                    isPlaying: isPlaying,
                    isLoading: isLoading,
                    isPause: isPause,
                    onSeekChanged: _changeSeek,
                    onPlayPauseButtonClick: _playAudio,
                    sent: false, // true = user (right), false = Bot (left)
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
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
                    mini: true,
                    onPressed: () {},
                    backgroundColor: Color(0xFF4CAF50),
                    child: Icon(Icons.send, color: Colors.white, size: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatTile(String title) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      title: Text(
        title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: () {},
    );
  }
}

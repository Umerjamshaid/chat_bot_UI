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
        actions: [TextButton(onPressed: () {}, child: Text('Login'))],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // Remove default ListView padding
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Sophia'),
              accountEmail: Text('@sophia.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://oyster.ignimgs.com/mediawiki/apis.ign.com/valorant/3/3d/VALORANT_Omen.png?width=1600',
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent, // Header background color
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.blueGrey,
              ), // Icon and color
              title: const Text(
                'Home',
                style: TextStyle(color: Colors.blueGrey),
              ), // Text and style
              onTap: () {
                // Update app state and close the drawer
                Navigator.pop(context);
                // Add navigation logic
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Handle tap
                Navigator.pop(context);
              },
            ),
            const Divider(), // Add a horizontal divider
          ],
        ),
      ),
    );
  }
}

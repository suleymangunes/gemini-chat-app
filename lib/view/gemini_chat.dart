import 'package:flutter/material.dart';
import 'package:gemini_chat_app/view/chat_page.dart';

class GeminiChat extends StatelessWidget {
  const GeminiChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ge-Bilgi',
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.purple,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      home: const ChatPage(),
    );
  }
}

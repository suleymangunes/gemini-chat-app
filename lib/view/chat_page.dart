import 'package:flutter/material.dart';
import 'package:gemini_chat_app/core/sections/stream.dart';
import 'package:gemini_chat_app/view/selection_item.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final int _selectedItem = 0;

  final _sections = <SectionItem>[
    SectionItem(0, 'Stream text', const SectionTextStreamInput()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_selectedItem == 0
            ? 'Gemini Chat'
            : _sections[_selectedItem].title),
      ),
      body: IndexedStack(
        index: _selectedItem,
        children: _sections.map((e) => e.widget).toList(),
      ),
    );
  }
}

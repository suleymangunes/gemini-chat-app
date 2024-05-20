import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:gemini_chat_app/view/gemini_chat.dart';

void main() async {
  Gemini.init(
      apiKey: "AIzaSyCU-0Vy6WVnW-EHh2L8vTmbNUfpHiByroE", enableDebugging: true);

  runApp(const GeminiChat());
}

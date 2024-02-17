import 'package:flutter/material.dart';
import 'package:system/features/Chat/presentation/widgets/body_chat_page.dart';
import 'package:system/features/Home/presentation/widgets/build_text_home_page.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextHomePageWidget(text: 'Chat'),
        centerTitle: true,
      ),
      body: const BoDyChatPageWidget(),
    );
  }
}

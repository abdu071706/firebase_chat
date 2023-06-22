import 'package:firebase_chat/app/presentation/chat/views/message/stream_message.dart';
import 'package:firebase_chat/app/presentation/chat/views/message/send_message.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello chat view'),
      ),
      body: Column(
        children: [
          StreamMessage(),
          const SendMessage(),
        ],
      ),
    );
  }
}

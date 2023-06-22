import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_chat/app/models/chat/chat_model.dart';
import 'package:flutter/material.dart';

class StreamMessage extends StatelessWidget {
  StreamMessage({super.key});
  final Stream<QuerySnapshot> _chats =
      FirebaseFirestore.instance.collection('chats').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _chats,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(
            color: Colors.blue,
          );
        }

        return Expanded(
          child: ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              ChatModel chatModel = ChatModel.fromJson(data);
              return ListTile(
                title: Text(chatModel.sms!),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}

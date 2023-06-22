import 'package:firebase_chat/app/data/firebase/collections/firebase_collection.dart';
import 'package:firebase_chat/app/models/chat/chat_model.dart';
import 'package:firebase_chat/app/presentation/chat/views/cubit/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SendMessage extends StatelessWidget {
  const SendMessage({this.onChange});
  final Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        chatModel.sms = value;
      },
      decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {
                context.read<ChatCubit>().sendMessage();
              },
              icon: Icon(
                Icons.send,
                color: Colors.blueAccent,
              )),
          hintText: 'Type something...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueAccent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.only(bottomRight:Radius.circular(10), topRight: Radius.circular(10) )),
          contentPadding:
              EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0)),
    );
  }
}

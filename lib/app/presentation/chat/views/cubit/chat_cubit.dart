import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/app/data/firebase/collections/firebase_collection.dart';

import 'package:firebase_chat/app/models/chat/chat_model.dart';
import 'package:firebase_chat/app/models/users/user_model.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatState());
  Future<void> sendMessage() async {
    final _chatmodel = ChatModel(
      sender: userModel.email,
      senderid: userModel.id,
      sms: chatModel.sms,
      smsid: userModel.id,
    );
    return  chats.add(_chatmodel.toJson())
      .then((_) => log("User Added")).catchError(
        (error) => log(
          "Failed to add user: $error",
        ),
      );
  }
}

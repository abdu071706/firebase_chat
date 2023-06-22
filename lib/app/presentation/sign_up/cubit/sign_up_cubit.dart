import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/app/data/firebase/collections/firebase_collection.dart';
import 'package:firebase_chat/app/models/users/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpState());

  Future<void> addUser(User user) {
    final _userModel = UserModel(
      email: user.email,
      id: user.uid,
      name: userModel.name,
      );

    return users.add(_userModel.toJson())
      ..then((_) => log("User Added")).catchError(
        (error) => log(
          "Failed to add user: $error",
        ),
      );
  }

  Future<void> signUp() async {
    try {
      final userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userModel.email!,
        password: userModel.password!,
      );
      await addUser(
        userCredential.user!,
      );
      // .then((value) => {
      //       addUser(),
      //     });

 
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
      }
    } catch (e) {
      log('catch error===> $e');
    }
  }
}

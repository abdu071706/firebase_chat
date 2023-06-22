// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA_IzUTnjgWFZwsYQ09rbgoXyfwBYEhHcA',
    appId: '1:1042828949120:web:5b72d5df3af69c2b90d865',
    messagingSenderId: '1042828949120',
    projectId: 'fir-chat-56fd2',
    authDomain: 'fir-chat-56fd2.firebaseapp.com',
    storageBucket: 'fir-chat-56fd2.appspot.com',
    measurementId: 'G-89ZTK75BLK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAPqE72eGF_tPuxYR_biCKLBYxNvZyiM8',
    appId: '1:1042828949120:android:79bb293ab0afa13d90d865',
    messagingSenderId: '1042828949120',
    projectId: 'fir-chat-56fd2',
    storageBucket: 'fir-chat-56fd2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBsMPVN3r2T-uoJg_MCLnYCTf18QTZq3qY',
    appId: '1:1042828949120:ios:60f3f8f9a36e8eba90d865',
    messagingSenderId: '1042828949120',
    projectId: 'fir-chat-56fd2',
    storageBucket: 'fir-chat-56fd2.appspot.com',
    iosClientId: '1042828949120-2psn0rhnnuubd0e0j2ss4kgimn3ijun4.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBsMPVN3r2T-uoJg_MCLnYCTf18QTZq3qY',
    appId: '1:1042828949120:ios:60f3f8f9a36e8eba90d865',
    messagingSenderId: '1042828949120',
    projectId: 'fir-chat-56fd2',
    storageBucket: 'fir-chat-56fd2.appspot.com',
    iosClientId: '1042828949120-2psn0rhnnuubd0e0j2ss4kgimn3ijun4.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseChat',
  );
}

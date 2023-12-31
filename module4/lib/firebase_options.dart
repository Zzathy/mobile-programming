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
    apiKey: 'AIzaSyCs7zAVMYzC_nnQgbH5PkMmm_EsBoMMY2M',
    appId: '1:667573325286:web:105b45385273d08a935a27',
    messagingSenderId: '667573325286',
    projectId: 'practice-fce51',
    authDomain: 'practice-fce51.firebaseapp.com',
    storageBucket: 'practice-fce51.appspot.com',
    measurementId: 'G-N1TM872X1P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyADXGJK9LNxdK0h17ccqwyKSW4bpg5TqoE',
    appId: '1:667573325286:android:141b33002c2b51df935a27',
    messagingSenderId: '667573325286',
    projectId: 'practice-fce51',
    storageBucket: 'practice-fce51.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB85lHKRnMkGhBhZz0LhPjB9VLbYG210Vs',
    appId: '1:667573325286:ios:ed4f634efce7a9d8935a27',
    messagingSenderId: '667573325286',
    projectId: 'practice-fce51',
    storageBucket: 'practice-fce51.appspot.com',
    iosBundleId: 'com.example.module4',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB85lHKRnMkGhBhZz0LhPjB9VLbYG210Vs',
    appId: '1:667573325286:ios:dbc3406bdb3b55e5935a27',
    messagingSenderId: '667573325286',
    projectId: 'practice-fce51',
    storageBucket: 'practice-fce51.appspot.com',
    iosBundleId: 'com.example.module4.RunnerTests',
  );
}

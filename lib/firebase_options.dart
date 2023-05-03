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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCLnnKtm0osw4AKRRW2hkswjFh2nkdtfng',
    appId: '1:587106508153:web:911a49b2e4647e008523a8',
    messagingSenderId: '587106508153',
    projectId: 'smart-student-project',
    authDomain: 'smart-student-project.firebaseapp.com',
    storageBucket: 'smart-student-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZepWB9numP8ZYES5PPBiHcB1625XGRfw',
    appId: '1:587106508153:android:54e4677d1ee2451a8523a8',
    messagingSenderId: '587106508153',
    projectId: 'smart-student-project',
    storageBucket: 'smart-student-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkzzp9ng7nzKOGv3TAXf7kFxXP4VtYeaY',
    appId: '1:587106508153:ios:3dd8611d743c0a968523a8',
    messagingSenderId: '587106508153',
    projectId: 'smart-student-project',
    storageBucket: 'smart-student-project.appspot.com',
    iosClientId: '587106508153-5a4tsengkuvqsss2s3h0ngovp5t6u2ro.apps.googleusercontent.com',
    iosBundleId: 'awaken.com.smartStudentsCheck',
  );
}

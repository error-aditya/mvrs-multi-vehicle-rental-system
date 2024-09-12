// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAqhPNWj_RWbNcnNmlWCshER18qktfTl48',
    appId: '1:477226800444:web:e5fc0203cdb5702ac4ba39',
    messagingSenderId: '477226800444',
    projectId: 'mvrs-def68',
    authDomain: 'mvrs-def68.firebaseapp.com',
    databaseURL: 'https://mvrs-def68-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'mvrs-def68.appspot.com',
    measurementId: 'G-V7WRGM7HZX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQeh3KA-77OkMw7LKi2CJgsFuePp2L6fM',
    appId: '1:477226800444:android:804710cefaf7ae6fc4ba39',
    messagingSenderId: '477226800444',
    projectId: 'mvrs-def68',
    databaseURL: 'https://mvrs-def68-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'mvrs-def68.appspot.com',
  );
}
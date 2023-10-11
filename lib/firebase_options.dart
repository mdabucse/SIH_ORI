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
    apiKey: 'AIzaSyAMKlZJLyLuiFFaCkOB2KY60g8Pp_54jZM',
    appId: '1:1035934967539:web:77f6fd132f9e50f256f986',
    messagingSenderId: '1035934967539',
    projectId: 'login-ad2b2',
    authDomain: 'login-ad2b2.firebaseapp.com',
    storageBucket: 'login-ad2b2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBZiUC9alYRJcMGFbIibT-RWBy1v20Vg_Q',
    appId: '1:1035934967539:android:8ea932c715c04f4d56f986',
    messagingSenderId: '1035934967539',
    projectId: 'login-ad2b2',
    storageBucket: 'login-ad2b2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbgUoDyduXbNd6Y-8WBWgmShw1Hnd9wvs',
    appId: '1:1035934967539:ios:563c3ab0b987f85956f986',
    messagingSenderId: '1035934967539',
    projectId: 'login-ad2b2',
    storageBucket: 'login-ad2b2.appspot.com',
    iosBundleId: 'com.example.sample',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbgUoDyduXbNd6Y-8WBWgmShw1Hnd9wvs',
    appId: '1:1035934967539:ios:b986d1f40fbfce1456f986',
    messagingSenderId: '1035934967539',
    projectId: 'login-ad2b2',
    storageBucket: 'login-ad2b2.appspot.com',
    iosBundleId: 'com.example.sample.RunnerTests',
  );
}

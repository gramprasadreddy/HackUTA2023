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
    apiKey: 'AIzaSyAB9sjl-m95eiHiaZ73RjkCrMFru_yY0Uw',
    appId: '1:500395975641:web:805e8469f75443e6f72fc8',
    messagingSenderId: '500395975641',
    projectId: 'hackuta2023-a2672',
    authDomain: 'hackuta2023-a2672.firebaseapp.com',
    storageBucket: 'hackuta2023-a2672.appspot.com',
    measurementId: 'G-3TZK2BJVY6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD5KSP2tk8RYWHOjnT09jw0nzaCnX1PPP4',
    appId: '1:500395975641:android:590189a126222ceff72fc8',
    messagingSenderId: '500395975641',
    projectId: 'hackuta2023-a2672',
    storageBucket: 'hackuta2023-a2672.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfsR73qSmaunwEe1U-PQzaBJdNYvi5lss',
    appId: '1:500395975641:ios:7ba86375a7a8e558f72fc8',
    messagingSenderId: '500395975641',
    projectId: 'hackuta2023-a2672',
    storageBucket: 'hackuta2023-a2672.appspot.com',
    iosBundleId: 'com.example.hackuta',
  );
}

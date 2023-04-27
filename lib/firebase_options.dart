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
    apiKey: 'AIzaSyB4HtAK7izB7WbooOngNohEev2cxFUzF1I',
    appId: '1:91545569872:web:4ca5a32dae02d7b0ba1f55',
    messagingSenderId: '91545569872',
    projectId: 'emg-shop',
    authDomain: 'emg-shop.firebaseapp.com',
    storageBucket: 'emg-shop.appspot.com',
    measurementId: 'G-GG2QBXT6KE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLw8j6qW9XvBEznMJs_uZAuu4uru_ez_Y',
    appId: '1:91545569872:android:6d031bcaa7b2c825ba1f55',
    messagingSenderId: '91545569872',
    projectId: 'emg-shop',
    storageBucket: 'emg-shop.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAGXxtE7b26aAXTdENTUsOx1SqWvPIUSnA',
    appId: '1:91545569872:ios:f8b26342c0c881fdba1f55',
    messagingSenderId: '91545569872',
    projectId: 'emg-shop',
    storageBucket: 'emg-shop.appspot.com',
    iosClientId: '91545569872-ponkpe8jihe9e2mi221od1208k393c44.apps.googleusercontent.com',
    iosBundleId: 'com.emglab.emgShop',
  );
}

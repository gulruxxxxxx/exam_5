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
    apiKey: 'AIzaSyBLqZacCB7rYyFTyTYVnA6UEOvQ2ydeyLY',
    appId: '1:361470835671:web:852cbb17ae87f78523e992',
    messagingSenderId: '361470835671',
    projectId: 'productivee-1d99a',
    authDomain: 'productivee-1d99a.firebaseapp.com',
    storageBucket: 'productivee-1d99a.appspot.com',
    measurementId: 'G-WH625M2V5C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD0WVcMX8iBzzQ29ILJ55bdQntpaGmpxVk',
    appId: '1:361470835671:android:efb9678f97e859a023e992',
    messagingSenderId: '361470835671',
    projectId: 'productivee-1d99a',
    storageBucket: 'productivee-1d99a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbzEHkgVkzjmVP0blJ4WfWUPyrILqf2e8',
    appId: '1:361470835671:ios:3676436d93b9f0bb23e992',
    messagingSenderId: '361470835671',
    projectId: 'productivee-1d99a',
    storageBucket: 'productivee-1d99a.appspot.com',
    iosBundleId: 'com.example.productivee',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbzEHkgVkzjmVP0blJ4WfWUPyrILqf2e8',
    appId: '1:361470835671:ios:33e7489b28efde3023e992',
    messagingSenderId: '361470835671',
    projectId: 'productivee-1d99a',
    storageBucket: 'productivee-1d99a.appspot.com',
    iosBundleId: 'com.example.productivee.RunnerTests',
  );
}

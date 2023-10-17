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
    apiKey: 'AIzaSyCpfUx4jxmDkG96S9qlzEl7goHyIVvqMOA',
    appId: '1:960832609905:web:14170e56d58f305f7045d0',
    messagingSenderId: '960832609905',
    projectId: 'job-portal-58c38',
    authDomain: 'job-portal-58c38.firebaseapp.com',
    storageBucket: 'job-portal-58c38.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAPjo6HXv0wN6scmQHfuBBPyyl3R3xfsnA',
    appId: '1:960832609905:android:1f74468b1f2fdc3b7045d0',
    messagingSenderId: '960832609905',
    projectId: 'job-portal-58c38',
    storageBucket: 'job-portal-58c38.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCO8x5BuvOnt6NYb1iUeNxNlUUQVtuJ1iQ',
    appId: '1:960832609905:ios:19018fd43489a0de7045d0',
    messagingSenderId: '960832609905',
    projectId: 'job-portal-58c38',
    storageBucket: 'job-portal-58c38.appspot.com',
    iosBundleId: 'com.example.ccpCleanArchitecture',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCO8x5BuvOnt6NYb1iUeNxNlUUQVtuJ1iQ',
    appId: '1:960832609905:ios:57fbec22ef6971de7045d0',
    messagingSenderId: '960832609905',
    projectId: 'job-portal-58c38',
    storageBucket: 'job-portal-58c38.appspot.com',
    iosBundleId: 'com.example.ccpCleanArchitecture.RunnerTests',
  );
}

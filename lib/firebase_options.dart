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
    apiKey: 'AIzaSyCrwvpxCo1djHghfOSxE11ss9Sn8NG9jjE',
    appId: '1:662064967478:web:81c127461c9232e7510d97',
    messagingSenderId: '662064967478',
    projectId: 'survey-566ad',
    authDomain: 'survey-566ad.firebaseapp.com',
    storageBucket: 'survey-566ad.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCuLN7u3MC2xS4d_PQestYKCmIbmJ6zprU',
    appId: '1:662064967478:android:d0ab9419654b6618510d97',
    messagingSenderId: '662064967478',
    projectId: 'survey-566ad',
    storageBucket: 'survey-566ad.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCk0oum8AlmZSjJqnjwTostSopYTKrxh_4',
    appId: '1:662064967478:ios:8faad1d3087558e4510d97',
    messagingSenderId: '662064967478',
    projectId: 'survey-566ad',
    storageBucket: 'survey-566ad.appspot.com',
    iosClientId: '662064967478-s06mt96b98rqu17rfub887adkqukaf0q.apps.googleusercontent.com',
    iosBundleId: 'com.example.survey',
  );
}
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
    apiKey: 'AIzaSyDDRcweVBDuQ_jdwEst2b05rsRpiVVwmyA',
    appId: '1:390469911071:web:491327a15bfcb364cfcb2a',
    messagingSenderId: '390469911071',
    projectId: 'youthcare-398ee',
    authDomain: 'youthcare-398ee.firebaseapp.com',
    storageBucket: 'youthcare-398ee.appspot.com',
    measurementId: 'G-DC1KVZDEGX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAgeBe73-OOfHrudKMa_USiQ2u7coJzxps',
    appId: '1:390469911071:android:5e58bbb14db8162bcfcb2a',
    messagingSenderId: '390469911071',
    projectId: 'youthcare-398ee',
    storageBucket: 'youthcare-398ee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBTYURzWLd3Ob9nCJjNIM0UjtxG595fcnQ',
    appId: '1:390469911071:ios:31e5fe6ade1f1db4cfcb2a',
    messagingSenderId: '390469911071',
    projectId: 'youthcare-398ee',
    storageBucket: 'youthcare-398ee.appspot.com',
    iosClientId: '390469911071-u9dc6og551gr6gc7ko2ihdt8ptusb7pn.apps.googleusercontent.com',
    iosBundleId: 'com.example.youthCareApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBTYURzWLd3Ob9nCJjNIM0UjtxG595fcnQ',
    appId: '1:390469911071:ios:31e5fe6ade1f1db4cfcb2a',
    messagingSenderId: '390469911071',
    projectId: 'youthcare-398ee',
    storageBucket: 'youthcare-398ee.appspot.com',
    iosClientId: '390469911071-u9dc6og551gr6gc7ko2ihdt8ptusb7pn.apps.googleusercontent.com',
    iosBundleId: 'com.example.youthCareApplication',
  );
}

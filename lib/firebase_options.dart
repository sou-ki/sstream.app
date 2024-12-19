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
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyD28kkAWpgQlNmsBMkOaWd32MizMMTwEIA',
    appId: '1:972668608863:web:cf873aa76c11efe65ad6ea',
    messagingSenderId: '972668608863',
    projectId: 'fir-stream-f2cb9',
    authDomain: 'fir-stream-f2cb9.firebaseapp.com',
    storageBucket: 'fir-stream-f2cb9.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCxNLej7WB-MMNAf_b_1c7RadesQUCum_Y',
    appId: '1:972668608863:android:bf053ee86765e0525ad6ea',
    messagingSenderId: '972668608863',
    projectId: 'fir-stream-f2cb9',
    storageBucket: 'fir-stream-f2cb9.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB3mw6pPzT0ziRADPVMRZybao8rR8ZBras',
    appId: '1:972668608863:ios:a5dceb437c48f1eb5ad6ea',
    messagingSenderId: '972668608863',
    projectId: 'fir-stream-f2cb9',
    storageBucket: 'fir-stream-f2cb9.firebasestorage.app',
    iosBundleId: 'com.example.sstream',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB3mw6pPzT0ziRADPVMRZybao8rR8ZBras',
    appId: '1:972668608863:ios:a5dceb437c48f1eb5ad6ea',
    messagingSenderId: '972668608863',
    projectId: 'fir-stream-f2cb9',
    storageBucket: 'fir-stream-f2cb9.firebasestorage.app',
    iosBundleId: 'com.example.sstream',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD28kkAWpgQlNmsBMkOaWd32MizMMTwEIA',
    appId: '1:972668608863:web:9c28df55b18368f15ad6ea',
    messagingSenderId: '972668608863',
    projectId: 'fir-stream-f2cb9',
    authDomain: 'fir-stream-f2cb9.firebaseapp.com',
    storageBucket: 'fir-stream-f2cb9.firebasestorage.app',
  );
}
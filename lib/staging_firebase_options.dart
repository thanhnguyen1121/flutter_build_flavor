// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'staging_firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDaw5IMvl_CX2XFAIIjwgPpm3uTKt50X8I',
    appId: '1:546055527415:android:59862b4116e1d4a3ae6cf2',
    messagingSenderId: '546055527415',
    projectId: 'fir-notification-isolate',
    storageBucket: 'fir-notification-isolate.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJi68cMdguc1IHj0vIBUKQkU0CDgfdiIE',
    appId: '1:546055527415:ios:37b710ae0b279849ae6cf2',
    messagingSenderId: '546055527415',
    projectId: 'fir-notification-isolate',
    storageBucket: 'fir-notification-isolate.appspot.com',
    androidClientId: '546055527415-k0ov4qbnhmu4mvm5jkoqldlv8a8rv034.apps.googleusercontent.com',
    iosClientId: '546055527415-v4gv6e81tn2m9768usfqi6ghem31ec0s.apps.googleusercontent.com',
    iosBundleId: 'com.example.buildFlavorExample.staging',
  );
}
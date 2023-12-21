import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:frontend/main/enums/os.dart';
import 'package:frontend/main/environment.dart';

class FirebaseConfig {
  static FirebaseOptions get currentPlatform {
    switch (EnvConfig.os) {
      case OS.ios:
        return ios;
      case OS.android:
        return android;
    }
  }

  static FirebaseOptions android = FirebaseOptions(
    apiKey: EnvConfig.firebaseApiKey,
    appId: EnvConfig.firebaseAppId,
    messagingSenderId: EnvConfig.firebaseMessagingSenderId,
    projectId: EnvConfig.firebaseProjectId,
    databaseURL: EnvConfig.firebaseDatabaseUrl,
    storageBucket: EnvConfig.firebaseStorageBucket,
  );

  static FirebaseOptions ios = FirebaseOptions(
    apiKey: EnvConfig.firebaseApiKey,
    appId: EnvConfig.firebaseAppId,
    messagingSenderId: EnvConfig.firebaseMessagingSenderId,
    projectId: EnvConfig.firebaseProjectId,
    databaseURL: EnvConfig.firebaseDatabaseUrl,
    storageBucket: EnvConfig.firebaseStorageBucket,
    androidClientId: EnvConfig.firebaseAndroidClientId,
    iosClientId: EnvConfig.firebaseIOSClientId,
    iosBundleId: EnvConfig.bundleId,
  );
}

import 'package:firebase_core/firebase_core.dart';
import '../prod_firebase_options.dart' as firebase_prod;
import '../staging_firebase_options.dart' as firebase_staging;

import '../dev_firebase_options.dart' as firebase_dev;

enum Flavor { production, development, staging }

class Env {
  static final Env instance = Env.of();

  final String endpoint;
  final FirebaseOptions currentPlatform;

  const Env._({
    required this.endpoint,
    required this.currentPlatform,
  });

  static const String endpointProd = "https://endpoint.prod.tz.com";
  static const String endpointDev = "https://endpoint.dev.tz.com";
  static const String endpointStaging = "https://endpoint.staging.tz.com";

  factory Env.of() {
    const flavor = String.fromEnvironment('FLAVOR');
    if (flavor == Flavor.development.name) {
      return Env._development();
    } else if (flavor == Flavor.production.name) {
      return Env._production();
    } else {
      return Env._staging();
    }
  }

  factory Env._production() {
    return Env._(
        endpoint: endpointProd,
        currentPlatform: firebase_prod.DefaultFirebaseOptions.currentPlatform);
  }

  factory Env._development() {
    return Env._(
        endpoint: endpointDev,
        currentPlatform: firebase_dev.DefaultFirebaseOptions.currentPlatform);
  }

  factory Env._staging() {
    return Env._(
        endpoint: endpointStaging,
        currentPlatform:
            firebase_staging.DefaultFirebaseOptions.currentPlatform);
  }
}

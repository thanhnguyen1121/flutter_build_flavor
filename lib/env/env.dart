import 'package:flutter/foundation.dart';

enum Flavor { production, development, staging }

class Env {
  static final Env instance = Env.of();

  final String endpoint;

  const Env._({
    required this.endpoint,
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
    return const Env._(endpoint: endpointProd);
  }

  factory Env._development() {
    return const Env._(endpoint: endpointDev);
  }

  factory Env._staging() {
    return const Env._(endpoint: endpointStaging);
  }
}

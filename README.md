# build_flavor_example

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# NOTE FOR SETUP BUILD FLAVOR:
- [refer to the source] (https://www.youtube.com/watch?v=4Y7WaeU3P60)

- Flutter command:
  Build(Staging, Production, Development)
  Android
    flutter build apk --no-shrink --flavor development --dart-define=FLAVOR=development --target lib/main.dart
    flutter build apk --no-shrink --flavor development --dart-define=FLAVOR=staging --target lib/main.dart
    flutter build apk --no-shrink --flavor development --dart-define=FLAVOR=production --target lib/main.dart
    
    flutter build apk --no-shrink --flavor staging --dart-define=FLAVOR=development --target lib/main.dart
    flutter build apk --no-shrink --flavor staging --dart-define=FLAVOR=staging --target lib/main.dart
    flutter build apk --no-shrink --flavor staging --dart-define=FLAVOR=production --target lib/main.dart
    
    flutter build apk --no-shrink --flavor production --dart-define=FLAVOR=development --target lib/main.dart
    flutter build apk --no-shrink --flavor production --dart-define=FLAVOR=staging --target lib/main.dart
    flutter build apk --no-shrink --flavor production --dart-define=FLAVOR=production --target lib/main.dart

  IOS
    flutter build ios --flavor development --dart-define=FLAVOR=development --target lib/main.dart
    flutter build ios --flavor development --dart-define=FLAVOR=staging --target lib/main.dart
    flutter build ios --flavor development --dart-define=FLAVOR=production --target lib/main.dart
    
    flutter build ios --flavor staging --dart-define=FLAVOR=staging --target lib/main.dart
    flutter build ios --flavor staging --dart-define=FLAVOR=development --target lib/main.dart
    flutter build ios --flavor staging --dart-define=FLAVOR=production --target lib/main.dart
    
    flutter build ios --flavor production --dart-define=FLAVOR=development --target lib/main.dart
    flutter build ios --flavor production --dart-define=FLAVOR=staging --target lib/main.dart
    flutter build ios --flavor production --dart-define=FLAVOR=production --target lib/main.dart


For Android setup:
- Need setup inside build gradle level app:
  
  [
      flavorDimensions "env"
      productFlavors {
          development {
              dimension "env"
              applicationIdSuffix ".dev"
              resValue "string", "app_name", "Build Flavor Dev"
              versionNameSuffix ".dev"
          }
          production {
              dimension "env"
              applicationIdSuffix ".prod"
              resValue "string", "app_name", "Build Flavor Prod"
              versionNameSuffix ".prod"
          }
          staging {
              dimension "env"
              applicationIdSuffix ".staging"
              resValue "string", "app_name", "Build Flavor Staging"
              versionNameSuffix ".staging"
          }
      }
  ]

For IOS setup:
- Need add scheme for production, development, staging
    step: new scheme -> rename to production, development, staging.
- Add runner configurations:
    step: in runner project add runner config for:
        + debug production ,debug staging , debug development 
        + release production ,release staging , release development 
        + profile production ,profile staging , profile development
  
- Edit app name: 
    info.splits edit  to $(APP_DISPLAY_NAME)
    in runner targets select build settings then click add new user define config
  

# vibration_service

Small, static helpers for consistent **haptic feedback** in Flutter apps using
[`HapticFeedback`](https://api.flutter.dev/flutter/services/HapticFeedback-class.html).

## Install

```yaml
dependencies:
  vibration_service: ^0.1.0
```

Run `flutter pub get`.

## Usage

Import the library and call the methods from your widgets or logic (for example
after a network error or a successful save):

```dart
import 'package:vibration_service/vibration_service.dart';

// On validation / API error
await VibrationService.failure();

await VibrationService.success();
await VibrationService.onRefresh();
await VibrationService.warning();
await VibrationService.selection();
await VibrationService.scroll();
await VibrationService.light();
await VibrationService.heavy();

// Alternating vibrate (even indices, ms) and pause (odd indices, ms)
await VibrationService.custom([30, 50, 80, 50]);
```

## Notes

- Uses **haptics** (short taps), not the device vibrator motor API; behavior
  depends on the platform and hardware.
- `_canVibrate` currently always returns `true`; you can fork or extend the
  package to query settings or platform capabilities if you need that.


## Platform Setup

To use this vibration package, you must follow these platform-specific requirements:

#### 🤖 Android
Add the vibration permission to your `AndroidManifest.xml` file located in `android/app/src/main/AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.VIBRATE"/>

🍎 iOS

Physical Device Required: Please note that haptic feedback and vibrations do not work on the iOS Simulator. You must test the vibration functionality on a physical iPhone.

No additional Info.plist permissions are required for standard vibrations.
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

## Publishing checklist

Before `dart pub publish`:

1. Set **real** `homepage` / `repository` URLs in `pubspec.yaml` (or remove
   placeholders and point to your actual repo).
2. Confirm `LICENSE` matches how you want to license the package.
3. Add an verified publisher on [pub.dev](https://pub.dev/).

See [publishing packages](https://dart.dev/tools/pub/publishing).
# vibration_service

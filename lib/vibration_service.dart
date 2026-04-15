// ignore_for_file: empty_catches

// ignore: unnecessary_library_name
library vibration_service;

import 'package:flutter/services.dart';

/// Consistent haptic feedback helpers built on [HapticFeedback].
///
/// Call static methods such as [VibrationService.failure] from UI code after
/// user actions (success, error, pull-to-refresh, etc.).
class VibrationService {
  static Future<void> success() async {
    try {
      if (await _canVibrate()) {
        HapticFeedback.lightImpact();
      }
    } catch (e) {}
  }

  static Future<void> failure() async {
    try {
      if (await _canVibrate()) {
        for (int i = 0; i < 2; i++) {
          HapticFeedback.mediumImpact();
          if (i < 2) await Future.delayed(Duration(milliseconds: 80));
        }
      }
    } catch (e) {}
  }

  static Future<void> onRefresh() async {
    try {
      if (await _canVibrate()) {
        for (int i = 0; i < 2; i++) {
          HapticFeedback.mediumImpact();
          if (i < 2) await Future.delayed(Duration(milliseconds: 80));
        }
      }
    } catch (e) {}
  }

  static Future<void> warning() async {
    try {
      if (await _canVibrate()) {
        HapticFeedback.mediumImpact();
        await Future.delayed(Duration(milliseconds: 150));
        HapticFeedback.mediumImpact();
      }
    } catch (e) {}
  }

  static Future<void> scroll() async {
    try {
      if (await _canVibrate()) {
        HapticFeedback.lightImpact();
      }
    } catch (e) {}
  }

  static Future<void> selection() async {
    try {
      if (await _canVibrate()) {
        HapticFeedback.selectionClick();
      }
    } catch (e) {}
  }

  static Future<void> heavy() async {
    try {
      if (await _canVibrate()) {
        HapticFeedback.heavyImpact();
      }
    } catch (e) {}
  }

  static Future<void> light() async {
    try {
      if (await _canVibrate()) {
        HapticFeedback.lightImpact();
      }
    } catch (e) {}
  }

  /// [pattern] encodes alternating vibrate durations (even indices, ms) and
  /// pauses (odd indices, ms). Even-index values map to light / medium /
  /// heavy impact by duration thresholds.
  static Future<void> custom(List<int> pattern) async {
    try {
      if (await _canVibrate()) {
        for (int i = 0; i < pattern.length; i++) {
          if (i % 2 == 0) {
            final duration = pattern[i];
            if (duration > 0) {
              if (duration < 50) {
                HapticFeedback.lightImpact();
              } else if (duration < 100) {
                HapticFeedback.mediumImpact();
              } else {
                HapticFeedback.heavyImpact();
              }
            }
          }
          if (i < pattern.length - 1) {
            await Future.delayed(Duration(milliseconds: pattern[i + 1]));
          }
        }
      }
    } catch (e) {}
  }

  static Future<bool> _canVibrate() async {
    return true;
  }
}

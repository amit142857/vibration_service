import 'package:flutter_test/flutter_test.dart';

import 'package:vibration_service/vibration_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('VibrationService', () {
    test('success completes without throwing', () async {
      await VibrationService.success();
    });

    test('failure completes without throwing', () async {
      await VibrationService.failure();
    });

    test('onRefresh completes without throwing', () async {
      await VibrationService.onRefresh();
    });

    test('warning completes without throwing', () async {
      await VibrationService.warning();
    });

    test('scroll, selection, heavy, light complete', () async {
      await VibrationService.scroll();
      await VibrationService.selection();
      await VibrationService.heavy();
      await VibrationService.light();
    });

    test('custom completes for a simple pattern', () async {
      await VibrationService.custom([30, 40, 80, 40]);
    });
  });
}

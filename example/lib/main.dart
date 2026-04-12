import 'package:flutter/material.dart';
import 'package:vibration_service/vibration_service.dart';

void main() {
  runApp(const VibrationServiceExampleApp());
}

class VibrationServiceExampleApp extends StatelessWidget {
  const VibrationServiceExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'vibration_service example',
      home: Scaffold(
        appBar: AppBar(title: const Text('vibration_service')),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            FilledButton(
              onPressed: () => VibrationService.success(),
              child: const Text('success()'),
            ),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: () => VibrationService.failure(),
              child: const Text('failure()'),
            ),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: () => VibrationService.onRefresh(),
              child: const Text('onRefresh()'),
            ),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: () => VibrationService.warning(),
              child: const Text('warning()'),
            ),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: () => VibrationService.custom([30, 50, 80, 50]),
              child: const Text('custom([30, 50, 80, 50])'),
            ),
          ],
        ),
      ),
    );
  }
}

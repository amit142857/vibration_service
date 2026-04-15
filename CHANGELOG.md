# Changelog
## 1.0.5

* repo url update

## 1.0.4

* added comments

## 1.0.3

* added library to increase pub score

## 1.0.2

* Added setup guide.

## 1.0.0

* **Initial Production Release**
* Added `VibrationService` with pre-defined haptic patterns:
    * `success()`: Triple-beat impact for positive actions.
    * `failure()`: Heavy/repetitive impact for errors.
    * `warning()`: Attention-grabbing haptic pattern.
    * `refresh()`: Light feedback for pull-to-refresh actions.
    * `scroll()`: Subtle ticks for list scrolling.
    * `selection()`: Feedback for selecting items or toggling switches.
    * `lightImpact()`, `mediumImpact()`, and `heavyImpact()` wrappers.
* Added `custom()` method to support user-defined vibration durations and intensities.
* Comprehensive documentation for Android permissions and iOS hardware limitations.

## 0.1.6

* Internal testing of `VibrationService` helpers.
* Refactored pattern logic for better performance on iOS physical devices.

## 0.0.1

* Initial project scaffold and experimental vibration wrappers.

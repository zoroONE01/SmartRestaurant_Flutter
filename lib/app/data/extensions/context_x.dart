import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension ContextX on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;

  bool get isMobileMode => mediaQuerySize.width < 850;
  bool get isTableMode => mediaQuerySize.width >= 850 && mediaQuerySize.width < 1100;
  bool get isDesktopMode => mediaQuerySize.width > 1100;

// bool get isDesktop =>
//     (Platform.isWindows || Platform.isLinux || Platform.isMacOS);
//
// bool get isMobilePhone => (Platform.isAndroid || Platform.isIOS) && isPhone;
//
// bool get isTablet => (Platform.isAndroid || Platform.isIOS) && isTablet;
}

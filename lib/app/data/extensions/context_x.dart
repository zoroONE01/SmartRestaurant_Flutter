import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;

}

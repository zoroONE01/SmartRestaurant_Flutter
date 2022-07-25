import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  AppColors._();

  static const yellowOrange = Color(0xFFFF9100);
  static const organePumpkin = Color(0xFFFF7200);
  static const blackEerie50 = Color(0x8016181B);
  static const blackEerie = Color(0xFF16181B);
  static const blackRaisin = Color(0xFF1F2125);
  static const black = Color(0xFF000000);
  static const black95 = Color(0xF2000000);
  static const white = Color(0xFFFFFFFF);
  static const greySonicSilver = Color(0xFF73777D);
  static const greyOnyx = Color(0xFF36393E);

  static const gradientOrganeYellow = LinearGradient(
      colors: [organePumpkin, yellowOrange],
      begin: Alignment.centerLeft,
      end: FractionalOffset.centerRight);
  static const gradientOrganeYellowReverse = LinearGradient(
      colors: [yellowOrange, organePumpkin],
      begin: Alignment.centerLeft,
      end: FractionalOffset.centerRight);
}

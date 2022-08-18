import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/utils/utils.dart';

import 'app/routes/app_pages.dart';

void main() async {
  setUrlStrategy(PathUrlStrategy());
  runApp(
    GetMaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
          PointerDeviceKind.trackpad,
        },
      ),
      // showPerformanceOverlay: true,
      title: "Smart Restaurant",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: Utils.theme.lightTheme,
      darkTheme: Utils.theme.darkTheme,
      themeMode: ThemeMode.dark,
    ),
  );
}

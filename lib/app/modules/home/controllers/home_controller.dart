import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement HomeController

  // final isNavbarItemHover = false.obs;
  final isItemNavEnter = false.obs;
  final isItemNavExit = false.obs;
  final isItemSocHover = false.obs;
  late int indexNavHovering;
  late int indexSocHovering;

  // late final AnimationController controller;

  @override
  void onInit() {
    super.onInit();
    // controller = AnimationController(
    //   vsync: this,
    //   duration: const Duration(
    //     milliseconds: 2500,
    //   ),
    // );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  bool isHoverItemNavBar(int navKey) {
    if (isItemNavEnter.value && indexNavHovering == navKey) {
      return true;
    }
    if (isItemNavExit.value) {
      return false;
    }
    return false;
  }

  bool isHoverItemSocial(int socKey) {
    if (isItemSocHover.value && indexNavHovering == socKey) {
      return true;
    }
    return false;
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final isItemNavEnter = false.obs;
  final isItemNavExit = false.obs;
  final isItemSocHover = false.obs;
  final isItemMenuHover = false.obs;
  final isNavigatePageHover = false.obs;
  late int indexNavHovering;
  late int indexSocHovering;
  final CarouselController menuController = CarouselController();
  final sliderValue = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
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
    if (isItemSocHover.value && indexSocHovering == socKey) {
      return true;
    }
    return false;
  }

  void goToPage(double index) {
    menuController.animateToPage(sliderValue.value.toInt(),
        duration: kThemeAnimationDuration, curve: Curves.easeOutQuart);
    sliderValue.value = index.toDouble();
  }
}

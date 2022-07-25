import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController
    with GetTickerProviderStateMixin {
  //TODO: Implement SignUpController

  final tabIndex = 0.obs;
  final gender = 1.obs;

  late TabController tabController;
  late final AnimationController aniController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    aniController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..repeat(reverse: true)..stop();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    tabController.dispose();
    aniController.dispose();
  }

  void switchTab(int index){
    tabController.animateTo(index);
    tabIndex.value = index;
  }

}

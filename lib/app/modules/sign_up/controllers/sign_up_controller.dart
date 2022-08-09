import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class SignUpController extends GetxController with GetTickerProviderStateMixin {
  //TODO: Implement SignUpController

  final pageIndex = 0.obs;
  final gender = 1.obs;
  final isValid = true.obs;

  final  pageCtrl = PageController().obs;
  final usernameCtrl = TextEditingController().obs;
  final passwordCtrl = TextEditingController().obs;
  final confirmPasswordCtrl = TextEditingController().obs;
  final nameCtrl = TextEditingController().obs;
  final phoneCtrl = TextEditingController().obs;


  @override
  void onInit() async {
    super.onInit();
  }


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    pageCtrl.close();
    usernameCtrl.close();
    passwordCtrl.close();
    confirmPasswordCtrl.close();
    nameCtrl.close();
    phoneCtrl.close();
    super.onClose();
  }

  void swapPage(int index) {
    pageCtrl.value.jumpToPage(index);
  }

}

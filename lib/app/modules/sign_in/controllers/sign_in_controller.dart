import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/repositories/sign_in_repository.dart';

class SignInController extends GetxController {
  //TODO: Implement SignInController

  final SignInRepository accountRepository;
  final isRememberMe = false.obs;
  final usernameCtrl = TextEditingController().obs;
  final passwordCtrl = TextEditingController().obs;



  SignInController({ required this.accountRepository});

  @override
  void onInit() async {
    super.onInit();
    // hiveBox = await Hive.openBox('SIGN_IN_DATA');
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    usernameCtrl.close();
    passwordCtrl.close();
    super.onClose();
  }

  // void summit() async {
  //   // print(boxHelper.box.get("ACCESS_TOKEN"));
  //   // print(boxHelper.box.get("REFRESH_TOKEN"));
  //   var result = await accountRepository.sumbit(
  //       usernameCtrl.value.text, passwordCtrl.value.text);
  //
  // }

}

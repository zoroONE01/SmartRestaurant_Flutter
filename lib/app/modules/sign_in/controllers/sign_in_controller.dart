import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/providers/providers.dart';

import '../../../data/models/sign_in_model.dart';

class SignInController extends GetxController {
  final isRememberMe = false.obs;
  final usernameCtrl = TextEditingController().obs;
  final passwordCtrl = TextEditingController().obs;
  final message = ''.obs;

  SignInController();

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
    usernameCtrl.close();
    passwordCtrl.close();
    super.onClose();
  }

  void summit() async {
    message.value = await Providers.signIn.submit(
      model: SignInModel(
        usernameCtrl.value.text,
        passwordCtrl.value.text,
      ),
    );
  }
}

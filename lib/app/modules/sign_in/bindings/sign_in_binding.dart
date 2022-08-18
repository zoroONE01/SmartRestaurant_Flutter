import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/utils/utils.dart';
import 'package:smart_restaurant_flutter/app/modules/sign_up/controllers/sign_up_controller.dart';

import '../controllers/sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(
      () => SignInController(),
    );
    Get.lazyPut<SignUpController>(
      () => SignUpController(),
    );
    Get.lazyPut<ThemeManager>(() => ThemeManager());
  }
}

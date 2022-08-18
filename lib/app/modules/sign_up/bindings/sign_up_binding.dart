import 'package:get/get.dart';

import '../../../data/utils/utils.dart';
import '../../sign_in/controllers/sign_in_controller.dart';
import '../controllers/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(
      () => SignUpController(),
    );
    Get.lazyPut<SignInController>(
      () => SignInController(),
    );
    Get.lazyPut<ThemeManager>(() => ThemeManager());
  }
}

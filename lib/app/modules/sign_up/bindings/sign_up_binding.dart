import 'package:get/get.dart';

import '../../../data/repositories/sign_in_repository.dart';
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
      () => SignInController(
        accountRepository: SignInRepository(),
      ),
    );
    Get.lazyPut<ThemeManager>(() => ThemeManager());
  }
}

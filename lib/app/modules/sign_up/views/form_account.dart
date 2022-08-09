import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';
import 'package:smart_restaurant_flutter/app/data/utils/utils.dart';
import 'package:smart_restaurant_flutter/app/modules/common/auth_input_field.dart';

import '../controllers/sign_up_controller.dart';

class FormAccount extends GetView<SignUpController> {
  FormAccount({
    Key? key,
  }) : super(key: key);
  final _accountFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _accountFormKey,
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: Obx(
            () => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AuthInputField(
                  controller: controller.usernameCtrl.value,
                  label: 'Tài khoản',
                  hint: 'Nhập tài khoản',
                  validator: Utils.validator.username,
                ),
                AuthInputField(
                  controller: controller.passwordCtrl.value,
                  label: 'Mật khẩu',
                  hint: 'Nhập mật khẩu của bạn',
                  validator: Utils.validator.password,
                  hideText: true,
                ),
                AuthInputField(
                  controller: controller.confirmPasswordCtrl.value,
                  label: 'Xác nhận mật khẩu',
                  hint: 'Nhập lại mật khẩu của bạn',
                  validator: Utils.validator.password,
                  hideText: true,
                ),
                SimpleShadow(
                  offset: const Offset(0, 8),
                  sigma: 10,
                  opacity: 0.4,
                  color: context.colors.primary,
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 20, right: 20, left: 20, bottom: 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: context.colors.primary
                        //radius cho widget
                        ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        //radius cho hiệu ứng
                        onTap: () {
                          // controller.tabController.animateTo(1);
                        },
                        child: SizedBox(
                          height: 45,
                          width: 220,
                          child: Center(
                              child: Text(
                            'Đăng ký',
                            style: context.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: context.colors.onPrimary,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

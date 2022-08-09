import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';
import 'package:smart_restaurant_flutter/app/data/utils/utils.dart';
import 'package:smart_restaurant_flutter/app/modules/sign_in/controllers/sign_in_controller.dart';

import '../../common/auth_input_field.dart';

class FormSignIn extends GetView<SignInController> {
  FormSignIn({Key? key}) : super(key: key);

  final _signInFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signInFormKey,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 400),
        child: Obx(
          () => Column(
            children: [
              AuthInputField(
                controller: controller.usernameCtrl.value,
                label: 'Tài khoản',
                hint: 'Nhập tài khoản của bạn',
                validator: Utils.validator.username,
              ),
              AuthInputField(
                hideText: true,
                controller: controller.passwordCtrl.value,
                label: 'Mật khẩu',
                hint: 'Nhập mật khẩu của bạn',
                validator: Utils.validator.password,
              ),
              SizedBox(
                width: 190,
                child: CheckboxListTile(
                  title: Text(
                    'Ghi nhớ tài khoản',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colors.onSurfaceVariant,
                    ),
                  ),
                  value: controller.isRememberMe.value,
                  onChanged: (bool? value) {
                    controller.isRememberMe.value = value!;
                  },
                  activeColor: context.colors.primary,
                  selectedTileColor: context.colors.primary,
                ),
              ),
              SimpleShadow(
                offset: const Offset(0, 8),
                sigma: 10,
                opacity: 0.4,
                color: context.colors.primary,
                child: Container(
                  margin: const EdgeInsets.all(20),
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
                        if (_signInFormKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                        }
                      },
                      child: SizedBox(
                        height: 45,
                        width: 220,
                        child: Center(
                            child: Text(
                          'Đăng Nhập',
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
    );
  }
}

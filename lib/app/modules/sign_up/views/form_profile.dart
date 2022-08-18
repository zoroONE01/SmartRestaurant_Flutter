import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';
import 'package:smart_restaurant_flutter/app/modules/common/auth_input_field.dart';

import '../../../data/utils/utils.dart';
import '../controllers/sign_up_controller.dart';
import 'labled_radio.dart';

class FormProfile extends GetView<SignUpController> {
  FormProfile({
    Key? key,
  }) : super(key: key);
  final _profileFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _profileFormKey,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Obx(
            () => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AuthInputField(
                  controller: controller.nameCtrl.value,
                  label: 'Họ và tên',
                  hint: 'Nhập họ và tên của bạn',
                  validator: Utils.validator.name,
                ),
                AuthInputField(
                  isDigit: true,
                  controller: controller.phoneCtrl.value,
                  label: 'Số điện thoại',
                  hint: 'Nhập số điện thoại của bạn',
                  validator: Utils.validator.phone,
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 20, right: 20, bottom: 10, left: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Giới tính',
                          style: context.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: context.colors.onSurface,
                          )),
                       SizedBox(
                        width: context.mediaQuerySize.width * 0.01,
                      ),
                      LabeledRadio(
                        label: 'Nam',
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        value: 1,
                        groupValue: controller.gender.value,
                        onChanged: (int? newValue) {
                          controller.gender.value = newValue!;
                        },
                      ),
                      LabeledRadio(
                        label: 'Nữ',
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        value: 0,
                        groupValue: controller.gender.value,
                        onChanged: (int? newValue) {
                          controller.gender.value = newValue!;
                        },
                      ),
                      LabeledRadio(
                        label: 'Khác',
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        value: 2,
                        groupValue: controller.gender.value,
                        onChanged: (int? newValue) {
                          controller.gender.value = newValue!;
                        },
                      ),
                    ],
                  ),
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
                      //radius cho widget
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(16),
                      color: context.colors.primary,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        //radius cho hiệu ứng
                        onTap: () {
                          if (_profileFormKey.currentState!.validate()) {
                            controller.swapPage(1);
                          }
                        },
                        child: SizedBox(
                          height: 45,
                          width: 220,
                          child: Center(
                              child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Tiếp theo',
                                style: context.textTheme.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: context.colors.onPrimary,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right_rounded,
                                color: context.colors.onPrimary,
                              )
                            ],
                          )),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

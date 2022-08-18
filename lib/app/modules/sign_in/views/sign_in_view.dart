import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:smart_restaurant_flutter/app/data/constants/asset_paths.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';
import 'package:smart_restaurant_flutter/app/modules/sign_in/controllers/sign_in_controller.dart';
import 'package:smart_restaurant_flutter/app/modules/sign_in/views/form_sign_in.dart';

import '../../../routes/app_pages.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: context.isDesktopMode
            ? BoxDecoration(
                gradient: LinearGradient(
                colors: [
                  context.colors.tertiary,
                  context.colors.tertiaryContainer
                ],
                begin: const Alignment(1, 0),
                end: const Alignment(-1, 0),
              ))
            : BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(imgBgSignUp),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    context.colors.background.withOpacity(0.3),
                    BlendMode.darken,
                  ),
                ),
              ),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 700,
              maxWidth: context.isDesktopMode ? 1100 : 550,
            ),
            child: Container(
              margin: const EdgeInsets.all(20),
              height: context.mediaQuerySize.height * 0.7,
              width: context.mediaQuerySize.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: context.colors.surface,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Obx(
                        () => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Đăng Nhập',
                              style: context.textTheme.displaySmall?.copyWith(
                                fontSize: 36,
                                color: context.colors.primary,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            FormSignIn(),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Bạn chưa có tài khoản?',
                                  style: context.textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: context.theme.colorScheme.onSurface,
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(5),
                                    onTap: () {
                                      Get.toNamed(
                                        Routes.SIGN_UP,
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Đăng Ký',
                                        style: context.textTheme.bodySmall
                                            ?.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: context.colors.primary,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            controller.message.value.isNotEmpty
                                ? Container(
                                    margin: const EdgeInsets.only(top: 30),
                                    child: Text(
                                      controller.message.value,
                                      style: context.textTheme.bodyMedium
                                          ?.copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: context.colors.error,
                                      ),
                                    ),
                                  )
                                : const SizedBox.shrink()
                          ],
                        ),
                      ),
                    ),
                  ),
                  context.isDesktopMode
                      ? Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(24),
                                  bottomRight: Radius.circular(24)),
                              image: DecorationImage(
                                  image: const AssetImage(imgBgSignUp),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                    context.colors.background.withOpacity(0.3),
                                    BlendMode.darken,
                                  )),
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

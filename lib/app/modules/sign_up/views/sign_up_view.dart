import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';

import '../../../data/constants/asset_paths.dart';
import '../../../routes/app_pages.dart';
import '../controllers/sign_up_controller.dart';
import 'form_account.dart';
import 'form_profile.dart';

class SignUpView extends GetView<SignUpController> {
  SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: Container(
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
                    image: const AssetImage(imgBgSignIn),
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
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: context.colors.surface,
                ),
                child: Row(
                  children: [
                    context.isDesktopMode
                        ? Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(24),
                                    bottomLeft: Radius.circular(24)),
                                image: DecorationImage(
                                    image: const AssetImage(imgBgSignIn),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                      context.colors.background
                                          .withOpacity(0.3),
                                      BlendMode.darken,
                                    )),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                    Expanded(
                      flex: 1,
                      child: Obx(
                        () => Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                controller.pageIndex.value == 1
                                    ? Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          onTap: () {
                                            controller.swapPage(0);
                                          },
                                          child: Icon(
                                            Icons.keyboard_arrow_left_rounded,
                                            size: 42,
                                            color: context.colors.primary,
                                          ),
                                        ),
                                      )
                                    : const SizedBox(
                                        width: 42,
                                      ),
                                // SvgPicture.asset(AppPaths.icArrowLeft, color: context.colors.primary, height: ,)),
                                Text(
                                  'Đăng Ký',
                                  style:
                                      context.textTheme.displaySmall?.copyWith(
                                    fontSize: 36,
                                    color: context.colors.primary,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  width: 42,
                                ),
                              ],
                            ),
                            ExpandablePageView(
                              onPageChanged: (index) =>
                                  controller.pageIndex.value = index,
                              controller: controller.pageCtrl.value,
                              children: [
                                FormProfile(),
                                FormAccount(),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Bạn đã có tài khoản?',
                                  style: context.textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: context.colors.onSurface,
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(5),
                                    //radius cho hiệu ứng
                                    onTap: () {
                                      Get.offAndToNamed(
                                        Routes.SIGN_IN,
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Đăng Nhập',
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

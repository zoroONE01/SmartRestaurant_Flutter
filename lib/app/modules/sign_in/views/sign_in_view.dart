import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [context.colors.secondary, context.colors.secondaryContainer],
          begin: const Alignment(1, 0),
          end: const Alignment(-1, 0),
        )),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 500, minWidth: 1000),
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
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Column(
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
                                  color: context
                                      .theme.colorScheme.onSurfaceVariant,
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
                                      style:
                                          context.textTheme.bodySmall?.copyWith(
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
                  Expanded(
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

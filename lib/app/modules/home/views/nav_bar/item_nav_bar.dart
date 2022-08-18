import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';

import '../../controllers/home_controller.dart';

class NavBarItem extends GetView<HomeController> {
  const NavBarItem({
    required this.title,
    required this.tabKey,
    required this.indicatorSize,
    Key? key,
  }) : super(key: key);

  final String title;
  final int tabKey;
  final double indicatorSize;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MouseRegion(
        onEnter: (_) {
          controller.isItemNavEnter.value = true;
          controller.isItemNavExit.value = false;
          controller.indexNavHovering = tabKey;
        },
        onExit: (_) {
          controller.isItemNavExit.value = true;
          controller.isItemNavEnter.value = false;
        },
        cursor: SystemMouseCursors.click,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                title,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: controller.isHoverItemNavBar(tabKey)
                      ? context.colors.primary
                      : context.colors.onBackground,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            // )
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: 2,
              curve: Curves.easeOutQuint,
              decoration: BoxDecoration(color: context.colors.primary),
              width: controller.isHoverItemNavBar(tabKey) ? indicatorSize : 0,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
                style: GoogleFonts.comfortaa(
                    color: controller.isHoverItemNavBar(tabKey)
                        ? context.theme.colorScheme.primary
                        : context.theme.colorScheme.primary,
                    fontSize: 16),
              ),
            ),
            // )
            AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                height: 2,
                curve: Curves.easeOutQuint,
                decoration:
                    BoxDecoration(color: context.theme.colorScheme.primary),
                width: controller.isHoverItemNavBar(tabKey) ? indicatorSize : 0)
          ],
        ),
      ),
    );
  }
}

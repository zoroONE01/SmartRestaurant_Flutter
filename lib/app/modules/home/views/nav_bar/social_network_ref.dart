import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/constants/asset_paths.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';
import 'package:smart_restaurant_flutter/app/modules/home/controllers/home_controller.dart';

class SocialNetworkRef extends GetView<HomeController> {
  const SocialNetworkRef({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ItemSocial(iconPath: icFacebook, itemKey: 0),
        ItemSocial(iconPath: icYoutube, itemKey: 1),
        ItemSocial(iconPath: icMail, itemKey: 2),
        ItemSocial(iconPath: icGitHub, itemKey: 3),
      ],
    );
  }
}

class ItemSocial extends GetView<HomeController> {
  const ItemSocial({
    Key? key,
    required this.itemKey,
    required this.iconPath,
  }) : super(key: key);

  final int itemKey;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      child: Obx(
        () => Container(
          margin: const EdgeInsets.symmetric(horizontal: 7),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              controller.isItemSocHover.value = value;
              controller.indexSocHovering = itemKey;
            },
            borderRadius: BorderRadius.circular(20),
            splashFactory: NoSplash.splashFactory,
            child: SvgPicture.asset(
              iconPath,
              height: 20,
              width: 20,
              color: controller.isHoverItemSocial(itemKey)
                  ? context.colors.primary
                  : context.colors.onBackground,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        ItemSocial(icon: Icons.facebook_sharp, itemKey: 0),
        ItemSocial(icon: Icons.facebook_sharp, itemKey: 1),
        ItemSocial(icon: Icons.facebook_sharp, itemKey: 2),
        ItemSocial(icon: Icons.facebook_sharp, itemKey: 3),
      ],
    );
  }
}

class ItemSocial extends GetView<HomeController> {
  const ItemSocial({
    Key? key,
    required this.itemKey,
    required this.icon,
  }) : super(key: key);

  final int itemKey;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      child: Obx(
        () => Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              controller.isItemSocHover.value = value;
              controller.indexSocHovering = itemKey;
            },
            borderRadius: BorderRadius.circular(20),
            splashFactory: NoSplash.splashFactory,
            child: Icon(
              icon,
              color: controller.isHoverItemSocial(itemKey)
                  ? context.theme.colorScheme.primary
                  : context.theme.colorScheme.primary,
            ),
          ),
        ),
      ),
    );
  }
}

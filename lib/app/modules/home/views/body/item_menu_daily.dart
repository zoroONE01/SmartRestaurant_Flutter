import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';

import '../../../../data/constants/asset_paths.dart';

class ItemMenuDaily extends StatefulWidget {
  const ItemMenuDaily({
    Key? key,
  }) : super(key: key);

  @override
  State<ItemMenuDaily> createState() => _ItemMenuDailyState();
}

class _ItemMenuDailyState extends State<ItemMenuDaily> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovering = false;
        });
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          border: Border.all(
            color: context.colors.primary,
            width: isHovering ? 2 : 0,
            style: isHovering ? BorderStyle.solid : BorderStyle.none
          ),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: const AssetImage(imgBgSignUp),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              context.colors.background.withOpacity(0.3),
              isHovering ? BlendMode.lighten : BlendMode.darken,
            ),
          ),
        ),
        curve: Curves.ease,
        duration: const Duration(milliseconds: 100),
        child: Align(
          alignment: const Alignment(-1, 0.7),
          child: Container(
            decoration: BoxDecoration(
              color: context.colors.secondaryContainer,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            alignment: const Alignment(-0.5, 0),
            height: 60,
            width: 200,
            child: Text(
              'Vịt nấu chao',
              style: context.textTheme.bodyLarge
                  ?.copyWith(color: context.colors.primary),
            ),
          ),
        ),
      ),
    );
  }
}

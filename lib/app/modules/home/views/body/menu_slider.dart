import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';

import '../../controllers/home_controller.dart';

class MenuSlider extends GetView<HomeController> {
  const MenuSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: context.height * 0.02,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Obx(
            () => Expanded(
                child:
                Slider.adaptive(
                  divisions: 6,
                  min: 0,
                  max: 5,
                  value: controller.sliderValue.value.toDouble(),
                  thumbColor: context.colors.primary,
                  inactiveColor: context.colors.surfaceVariant,
                  activeColor: context.colors.surfaceVariant,
                  onChanged: (value) {
                    controller.goToPage(value);
                  },
                ),
            ),
          ),
          // Expanded(
          //   child: Stack(
          //     children: const [
          //       Divider(
          //         thickness: 2,
          //       ),
          //       AnimatedSlide(
          //         offset: Offset(0, 1),
          //         duration: kThemeAnimationDuration,
          //       )
          //     ],
          //   ),
          // ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: Text(
              'Menu hôm nay',
              style: context.textTheme.bodyLarge?.copyWith(
                color: context.colors.primary,
              ),
            ),
          ),
          Container(
            color: context.colors.primary,
            height: 2,
            width: MediaQuery.of(context).size.width * 0.08,
          )
        ],
      ),
    );
  }
}

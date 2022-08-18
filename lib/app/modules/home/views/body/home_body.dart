import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';
import 'package:smart_restaurant_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:smart_restaurant_flutter/app/modules/home/views/body/welcome.dart';

import 'menu_daily.dart';
import 'menu_slider.dart';

class HomeBody extends GetView<HomeController> {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.isMobileMode
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: context.isMobileMode ? 3: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    MenuDaily(),
                    MenuSlider(),
                  ],
                ),
              ),
              const Expanded(
                flex: 3,
                child: Welcome(),
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                flex: 2,
                child: Welcome(),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    MenuDaily(),
                    MenuSlider(),
                  ],
                ),
              )
            ],
          );
  }
}

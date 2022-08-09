import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/constants/asset_paths.dart';

import '../controllers/home_controller.dart';
import 'nav_bar/main_nav_bar.dart';
import 'nav_bar/sub_nav_bar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorScheme.primary,
      body: SizedBox(
        height: 100,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(icLogo),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const MainNavBar(),
                        Divider(
                          height: 2,
                          color: context.theme.colorScheme.primary,
                        ),
                        const SubNavBar(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

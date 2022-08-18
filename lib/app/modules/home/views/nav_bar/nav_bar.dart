import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';
import 'package:smart_restaurant_flutter/app/modules/home/views/nav_bar/sub_nav_bar.dart';

import '../../../../data/constants/asset_paths.dart';
import 'main_nav_bar.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: SimpleShadow(
                  opacity: 0.5,
                  child: AnimatedSwitcher(
                      duration: kThemeAnimationDuration,
                      child: context.isDesktopMode
                          ? SvgPicture.asset(icLogo)
                          : context.isTableMode ? Row(
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.menu_rounded,
                                size: 36,
                                color: context.colors.primary,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: SvgPicture.asset(
                              icLogo,
                              width: 150,
                            ),
                          )
                        ],
                      ) : Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.menu_rounded,
                            size: 36,
                            color: context.colors.primary,
                          ),
                        ),
                      ),
                  ),
                ),
              ),
              Expanded(
                flex: context.isDesktopMode ? 5 : context.isTableMode? 4: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const MainNavBar(),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      child: Divider(
                        height: 2,
                        color: context.colors.surfaceVariant,
                      ),
                    ),
                    const SubNavBar(),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

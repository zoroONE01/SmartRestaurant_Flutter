import 'package:flutter/material.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';
import 'package:smart_restaurant_flutter/app/modules/home/views/nav_bar/social_network_ref.dart';

import '../../../common/primary_button.dart';
import 'item_nav_bar.dart';

class MainNavBar extends StatelessWidget {
  const MainNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: context.isMobileMode ? 5 : 9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              context.isTableMode
                  ? const SizedBox.shrink()
                  : const Flexible(
                      flex: 3,
                      child: SocialNetworkRef(),
                    ),
              context.isMobileMode
                  ? const SizedBox.shrink()
                  : Flexible(
                      flex: context.isDesktopMode ? 7 : 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          NavBarItem(
                            title: 'Trang chủ',
                            tabKey: 0,
                            indicatorSize: 85,
                          ),
                          NavBarItem(
                            title: 'Menu',
                            tabKey: 1,
                            indicatorSize: 50,
                          ),
                          NavBarItem(
                            title: 'Đặt bàn',
                            tabKey: 2,
                            indicatorSize: 70,
                          ),
                          NavBarItem(
                            title: 'Về chúng tôi',
                            tabKey: 3,
                            indicatorSize: 105,
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
        Expanded(
          flex: context.isDesktopMode ? 1 : 2,
          child: const PrimaryButton(label: 'Đăng Nhập'),
        ),
      ],
    );
  }
}

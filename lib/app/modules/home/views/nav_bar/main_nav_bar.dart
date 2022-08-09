import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_restaurant_flutter/app/modules/home/views/nav_bar/social_network_ref.dart';

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
          flex: 9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Flexible(
                flex: 4,
                child: SocialNetworkRef(),
              ),
              Flexible(
                flex: 7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        Flexible(
          flex: 2,
          child: Material(
            color: context.theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(20),
            child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text('Đăng nhập',
                      style: GoogleFonts.comfortaa(
                          fontWeight: FontWeight.w700,
                          color: context.theme.colorScheme.primary,
                          fontSize: 16)),
                )),
          ),
        ),
      ],
    );
  }
}

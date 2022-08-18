import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: context.width * 0.03),
          child: SizedBox(
            width: context.isMobileMode
                ? context.width * 0.8
                : context.width * 0.3,
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Chào mừng bạn đến với ',
                    style: context.textTheme.displayLarge?.copyWith(
                      color: context.colors.secondary,
                      fontSize: context.isDesktopMode ? 64 : context.isMobileMode?  36 : 52,
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                    ),
                  ),
                  TextSpan(
                    text: '#',
                    style: context.textTheme.displayLarge?.copyWith(
                      color: context.colors.primary,
                      fontSize: context.isDesktopMode ? 64 : context.isMobileMode?  36 : 52,
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                    ),
                  ),
                  TextSpan(
                    text: 'Food',
                    style: context.textTheme.displayLarge?.copyWith(
                      color: context.colors.secondary,
                      fontSize: context.isDesktopMode ? 64 : context.isMobileMode?  36 : 52,
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                    ),
                  ),
                  TextSpan(
                    text: 'ĐÂY',
                    style: context.textTheme.displayLarge?.copyWith(
                      color: context.colors.primary,
                      fontSize: context.isDesktopMode ? 64 : context.isMobileMode?  36 : 52,
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          children: [
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: context.width * 0.03,
                      top: context.width * 0.01,
                      bottom: context.width * 0.01,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                              right: 10,
                              top: context.height * 0.04,
                              bottom: context.height * 0.04,
                            ),
                            color: context.colors.primary,
                            height: 2,
                          ),
                        ),
                        Text(
                          'Đặt bàn ngay',
                          style: context.textTheme.bodyLarge?.copyWith(
                            color: context.colors.primary,
                          ),
                        )
                      ],
                    ),
                  ),
                  Material(
                    color: context.colors.primary,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    child: InkWell(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.table_bar_rounded,
                                color: context.colors.onPrimary,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Đặt bàn',
                                style: context.textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: context.colors.onPrimary,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Flexible(
                flex: context.isDesktopMode
                    ? 2
                    : context.isMobileMode
                        ? 4
                        : 1,
                child: const SizedBox.shrink())
          ],
        ),
      ],
    );
  }
}

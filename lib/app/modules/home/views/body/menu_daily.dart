import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';

import '../../controllers/home_controller.dart';
import 'item_menu_daily.dart';

class MenuDaily extends GetView<HomeController> {
  const MenuDaily({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          blendMode: BlendMode.hardLight,
          shaderCallback: (bounds) =>
              _linearGradient(context).createShader(bounds),
          child: CarouselSlider.builder(
            options: CarouselOptions(
              viewportFraction: context.isDesktopMode ? 1 / 3.5 : 1 / 2.5,
              pageSnapping: true,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              height: context.isMobileMode
                  ? context.height * 0.3
                  : context.height * 0.6,
              autoPlayInterval: const Duration(seconds: 5),
              onPageChanged: (index, _) =>
                  controller.sliderValue.value = index.toDouble(),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeOutQuart,
              // enlargeCenterPage: true,
              pauseAutoPlayInFiniteScroll: true,
              pauseAutoPlayOnTouch: true,
              pauseAutoPlayOnManualNavigate: true,
              scrollDirection: Axis.horizontal,
            ),
            carouselController: controller.menuController,
            itemBuilder: (context, index, realIndex) {
              return MouseRegion(
                onEnter: (_) => controller.menuController.stopAutoPlay(),
                onExit: (_) => controller.menuController.startAutoPlay(),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: const ItemMenuDaily(),
                ),
              );
            },
            itemCount: 6,
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          child: Obx(
            () => Material(
              color: Colors.transparent,
              child: Ink(
                width: 80,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      controller.isNavigatePageHover.value
                          ? context.colors.background
                          : Colors.transparent,
                      context.colors.background.withOpacity(0),
                    ],
                  ),
                ),
                // alignment: const Alignment(0.8, 0),
                child: InkWell(
                  hoverColor: Colors.transparent,
                  onHover: (value) {
                    controller.isNavigatePageHover.value = value;
                  },
                  onTap: () {
                    controller.menuController.previousPage();
                  },
                  child: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    size: 60,
                    color: controller.isNavigatePageHover.value
                        ? context.colors.primary
                        : context.colors.primary.withOpacity(0.2),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: Obx(
            () => Material(
              color: Colors.transparent,
              child: Ink(
                width: 80,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      controller.isNavigatePageHover.value
                          ? context.colors.background
                          : Colors.transparent,
                      context.colors.background.withOpacity(0),
                    ],
                  ),
                ),
                // alignment: const Alignment(0.8, 0),
                child: InkWell(
                  hoverColor: Colors.transparent,
                  onHover: (value) {
                    controller.isNavigatePageHover.value = value;
                  },
                  onTap: () {
                    controller.menuController.nextPage();
                  },
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    size: 60,
                    color: controller.isNavigatePageHover.value
                        ? context.colors.primary
                        : context.colors.primary.withOpacity(0.2),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

LinearGradient _linearGradient(BuildContext context) => LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: <Color>[
        context.colors.background,
        context.colors.background.withOpacity(0.5),
        context.colors.background.withOpacity(0),
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        context.colors.background.withOpacity(0),
        context.colors.background.withOpacity(0.5),
        context.colors.background,
      ],
      tileMode: TileMode.decal,
    );

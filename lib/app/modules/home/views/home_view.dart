import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';
import 'package:smart_restaurant_flutter/app/modules/home/views/body/home_body.dart';

import '../controllers/home_controller.dart';
import 'nav_bar/nav_bar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = context.height;
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(
        toolbarHeight: 100,
        flexibleSpace: const NavBar(),
        elevation: 0,
        backgroundColor: context.colors.background,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: max(0, constraints.maxHeight - 100)),
              child: const HomeBody()),
        ),
      ),
    );
  }
}

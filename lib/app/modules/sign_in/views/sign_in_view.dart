
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:smart_restaurant_flutter/app/data/constants/app_colors.dart';
import 'package:smart_restaurant_flutter/app/data/constants/app_paths.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.gradientOrganeYellow,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 500, minWidth: 1000),
            child: Container(
              margin: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Đăng Nhập',
                            style: GoogleFonts.comfortaa(
                                color: AppColors.yellowOrange,
                                fontSize: 42,
                                fontWeight: FontWeight.w700),
                          ),
                          Form(
                            child: ConstrainedBox(
                              constraints:
                                  const BoxConstraints(maxWidth: 400),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: TextFormField(
                                      style: GoogleFonts.comfortaa(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.blackEerie,
                                          fontSize: 16),
                                      decoration: InputDecoration(
                                        label: Text(
                                          'Tài khoản',
                                          style: GoogleFonts.comfortaa(
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xFFBDBDBD),
                                              fontSize: 16),
                                        ),
                                        hintText: "Nhập tài khoản của bạn",
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 10),
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors.yellowOrange,
                                              width: 2),
                                        ),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors.yellowOrange,
                                              width: 2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 20),
                                    child: TextFormField(
                                      obscureText: true,
                                      style: GoogleFonts.comfortaa(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.blackEerie,
                                          fontSize: 16),
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      decoration: InputDecoration(
                                        label: Text(
                                          'Mật khẩu',
                                          style: GoogleFonts.comfortaa(
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xFFBDBDBD),
                                              fontSize: 16),
                                        ),
                                        hintText: "Nhập mật khẩu của bạn",
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 10),
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors.yellowOrange,
                                              width: 2),
                                        ),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors.yellowOrange,
                                              width: 2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SimpleShadow(
                                    offset: const Offset(0, 8),
                                    sigma: 10,
                                    opacity: 0.6,
                                    color: AppColors.yellowOrange,
                                    child: Container(
                                      margin: const EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          //radius cho widget
                                          gradient:
                                              AppColors.gradientOrganeYellow),
                                      child: Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          //radius cho hiệu ứng
                                          onTap: () {},
                                          child: SizedBox(
                                            height: 45,
                                            width: 220,
                                            child: Center(
                                                child: Text(
                                              'Đăng Nhập',
                                              style: GoogleFonts.comfortaa(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: Colors.white),
                                            )),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Bạn chưa có tài khoản?',
                                  style: GoogleFonts.comfortaa(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: const Color(0xFFBDBDBD))),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(5),
                                  //radius cho hiệu ứng
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Đăng Ký',
                                      style: GoogleFonts.comfortaa(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: AppColors.yellowOrange),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(24),
                            bottomRight: Radius.circular(24)),
                        image: DecorationImage(
                            image: const AssetImage(AppPaths.imgBgSignUp),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              AppColors.blackEerie.withOpacity(0.3),
                              BlendMode.darken,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../../data/constants/app_colors.dart';
import '../../../data/constants/app_paths.dart';
import '../../commons/labled_radio.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.gradientOrganeYellowReverse,
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
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(24),
                            bottomLeft: Radius.circular(24)),
                        image: DecorationImage(
                            image: const AssetImage(AppPaths.imgBgSignIn),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              AppColors.blackEerie.withOpacity(0.3),
                              BlendMode.darken,
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Obx(
                            () => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                controller.tabIndex.value == 1
                                    ? Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          onTap: () {
                                            controller.switchTab(0);
                                          },
                                          child: RotationTransition(
                                            turns: CurvedAnimation(
                                              parent: controller.aniController,
                                              curve: Curves.linear,
                                            ),
                                            child: const Icon(
                                              Icons.keyboard_arrow_left_rounded,
                                              size: 42,
                                              color: AppColors.yellowOrange,
                                            ),
                                          ),
                                        ),
                                      )
                                    : const SizedBox(
                                        width: 42,
                                      ),
                                // SvgPicture.asset(AppPaths.icArrowLeft, color: AppColors.yellowOrange, height: ,)),
                                Text(
                                  'Đăng Ký',
                                  style: GoogleFonts.comfortaa(
                                      color: AppColors.yellowOrange,
                                      fontSize: 42,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  width: 42,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: TabBarView(
                            controller: controller.tabController,
                            children: const [
                              FormProfile(),
                              FormAccount(),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Bạn đã có tài khoản?',
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
                                      'Đăng Nhập',
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
                        ),
                      ],
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

class FormProfile extends GetView<SignUpController> {
  const FormProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Obx(() {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: TextFormField(
                    style: GoogleFonts.comfortaa(
                        fontWeight: FontWeight.w700,
                        color: AppColors.blackEerie,
                        fontSize: 16),
                    decoration: InputDecoration(
                      label: Text(
                        'Họ và tên',
                        style: GoogleFonts.comfortaa(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFBDBDBD),
                            fontSize: 16),
                      ),
                      hintText: "Nhập họ tên của bạn",
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.yellowOrange, width: 2),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.yellowOrange, width: 2),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: TextFormField(
                    style: GoogleFonts.comfortaa(
                        fontWeight: FontWeight.w700,
                        color: AppColors.blackEerie,
                        fontSize: 16),
                    decoration: InputDecoration(
                      label: Text(
                        'Số điện thoại',
                        style: GoogleFonts.comfortaa(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFBDBDBD),
                            fontSize: 16),
                      ),
                      hintText: "Nhập số điện thoại của bạn",
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.yellowOrange, width: 2),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.yellowOrange, width: 2),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Giới tính',
                        style: GoogleFonts.comfortaa(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFBDBDBD),
                            fontSize: 16),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      LabeledRadio(
                        label: 'Nam',
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        value: 1,
                        groupValue: controller.gender.value,
                        onChanged: (int? newValue) {
                          controller.gender.value = newValue!;
                        },
                      ),
                      LabeledRadio(
                        label: 'Nữ',
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        value: 0,
                        groupValue: controller.gender.value,
                        onChanged: (int? newValue) {
                          controller.gender.value = newValue!;
                        },
                      ),
                      LabeledRadio(
                        label: 'Khác',
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        value: 3,
                        groupValue: controller.gender.value,
                        onChanged: (int? newValue) {
                          controller.gender.value = newValue!;
                        },
                      ),
                    ],
                  ),
                ),
                SimpleShadow(
                  offset: const Offset(0, 8),
                  sigma: 10,
                  opacity: 0.6,
                  color: AppColors.yellowOrange,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        //radius cho widget
                        gradient: AppColors.gradientOrganeYellow),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        //radius cho hiệu ứng
                        onTap: () {
                          controller.switchTab(1);
                        },
                        child: SizedBox(
                          height: 45,
                          width: 220,
                          child: Center(
                              child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Tiếp theo',
                                style: GoogleFonts.comfortaa(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(
                                Icons.keyboard_arrow_right_rounded,
                                color: AppColors.white,
                              )
                            ],
                          )),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}

class FormAccount extends GetView<SignUpController> {
  const FormAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                    hintText: "Nhập tên người dùng của bạn",
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.yellowOrange, width: 2),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.yellowOrange, width: 2),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: true,
                  style: GoogleFonts.comfortaa(
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackEerie,
                      fontSize: 16),
                  decoration: InputDecoration(
                    label: Text(
                      'Mật khẩu',
                      style: GoogleFonts.comfortaa(
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFBDBDBD),
                          fontSize: 16),
                    ),
                    hintText: "Nhập mật khẩu cho tài khoản",
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.yellowOrange, width: 2),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.yellowOrange, width: 2),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
                      'Xác nhận mật khẩu',
                      style: GoogleFonts.comfortaa(
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFBDBDBD),
                          fontSize: 16),
                    ),
                    hintText: "Nhập lại mật khẩu của bạn",
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.yellowOrange, width: 2),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.yellowOrange, width: 2),
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
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      //radius cho widget
                      gradient: AppColors.gradientOrganeYellow),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      //radius cho hiệu ứng
                      onTap: () {
                        // controller.tabController.animateTo(1);
                      },
                      child: SizedBox(
                        height: 45,
                        width: 220,
                        child: Center(
                            child: Text(
                          'Đăng ký',
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
    );
  }
}

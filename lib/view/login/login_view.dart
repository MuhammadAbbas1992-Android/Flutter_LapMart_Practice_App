import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/router_report.dart';
import 'package:get/get.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/constants/app_fonts.dart';
import 'package:lap_mart/res/common_widgets/common_account_row_widget.dart';
import 'package:lap_mart/res/routs/routs_app.dart';
import 'package:lap_mart/res/routs/routs_name.dart';
import 'package:lap_mart/utils/app_utils.dart';

import '../../res/common_widgets/common_button_widget.dart';
import '../../res/common_widgets/common_row_header_widget.dart';
import '../../res/common_widgets/common_text_field_icon_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final controllers = List.generate(2, (index) => TextEditingController());
  final formKeys = List.generate(2, (index) => GlobalKey<FormState>());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              CommonRowHeaderWidget(
                size: 33,
                svgIconMiddle: 'assets/icons/ic_laptop.svg',
                width: 35,
                height: 25,
              ),
              const SizedBox(
                height: 100.0,
              ),
              Form(
                key: formKeys[0],
                child: CommonTextFieldIconWidget(
                  hint: 'Email Address',
                  customLabel: 'Email',
                  prefixIcon: 'assets/icons/ic_email.svg',
                  controller: controllers[0],
                  validator: AppUtils.isEmail,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Form(
                key: formKeys[1],
                child: CommonTextFieldIconWidget(
                  hint: 'Password',
                  customLabel: 'Password',
                  prefixIcon: 'assets/icons/ic_password.svg',
                  controller: controllers[1],
                  validator: AppUtils.validatePassword,
                  obscure: true,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              const CommonButtonWidget(
                text: 'Sign In',
                onTap: loginUser,
              ),
              const SizedBox(
                height: 10.0,
              ),
              const CommonAccountRowWidget(
                textMessage: 'Don’t have an account?',
                textScreen: 'Sign Up',
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

void loginUser() {
  Get.toNamed(RoutsName.homeView);
}

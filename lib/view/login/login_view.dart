import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_navigation/src/router_report.dart';
import 'package:get/get.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/constants/app_fonts.dart';
import 'package:lap_mart/res/common_widgets/custom_account_row_widget.dart';
import 'package:lap_mart/res/routs/routs_app.dart';
import 'package:lap_mart/res/routs/routs_name.dart';
import 'package:lap_mart/utils/app_utils.dart';
import 'package:lap_mart/view/nav_bar/nav_bar.dart';
import 'package:lap_mart/view_model/controller/login/login_controller.dart';

import '../../res/common_widgets/custom_button_widget.dart';
import '../../res/common_widgets/custom_text_form_field_widget.dart';
import '../../res/common_widgets/custom_header_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginController = Get.put(LoginController());
  final formKeys = List.generate(2, (index) => GlobalKey<FormState>());

  void login(context) async {
    if (formKeys.any((e) => e.currentState!.validate() == false)) {
      return;
    }
    loginController.loginUser();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    loginController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150.0,
                ),
                const CustomHeaderWidget(
                  size: 33,
                  width: 35,
                  height: 25,
                ),
                const SizedBox(
                  height: 100.0,
                ),
                Column(
                  children: [
                    Form(
                      key: formKeys[0],
                      child: CommonTextFormFieldWidget(
                        hint: 'Email Address',
                        customLabel: 'Email',
                        prefixIcon: 'assets/icons/ic_email.svg',
                        controller: loginController.emailController.value,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Form(
                      key: formKeys[1],
                      child: CommonTextFormFieldWidget(
                        hint: 'Password',
                        customLabel: 'Password',
                        prefixIcon: 'assets/icons/ic_password.svg',
                        controller: loginController.passwordController.value,
                        // validator: AppUtils.validatePassword,
                        obscure: true,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40.0,
                ),
                CommonButtonWidget(
                  text: 'Sign In',
                  onTap: () => login(context),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CommonAccountRowWidget(
                  textMessage: 'Don’t have an account?',
                  textScreen: 'Sign Up',
                  onTap: () => Get.offNamed(RoutsName.signUpView),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

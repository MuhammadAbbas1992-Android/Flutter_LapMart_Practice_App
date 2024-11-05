import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../constants/app_colors.dart';
import '../../res/common_widgets/common_button_widget.dart';
import '../../res/common_widgets/common_row_header_widget.dart';
import '../../res/common_widgets/common_text_field_icon_widget.dart';
import '../../res/common_widgets/common_account_row_widget.dart';
import '../../res/routs/routs_name.dart';
import '../../utils/app_utils.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final controllers = List.generate(3, (index) => TextEditingController());
  final formKeys = List.generate(3, (index) => GlobalKey<FormState>());

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
                const CommonRowHeaderWidget(
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
                  height: 15.0,
                ),
                Form(
                  key: formKeys[2],
                  child: CommonTextFieldIconWidget(
                    hint: 'Confirm Password',
                    customLabel: 'Confirm Password',
                    prefixIcon: 'assets/icons/ic_password.svg',
                    controller: controllers[2],
                    validator: AppUtils.validatePassword,
                    obscure: true,
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                const CommonButtonWidget(
                  text: 'Sign Up',
                  onTap: AppUtils.homeView,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const CommonAccountRowWidget(
                  textMessage: 'Already have an account? ',
                  textScreen: 'Sign In',
                  onTap: AppUtils.loginView,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

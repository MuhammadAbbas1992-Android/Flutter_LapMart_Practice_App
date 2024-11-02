import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/router_report.dart';
import 'package:get/get.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/constants/app_fonts.dart';
import 'package:lap_mart/res/common_widgets/common_account_row_widget.dart';
import 'package:lap_mart/res/routs/routs_app.dart';
import 'package:lap_mart/res/routs/routs_name.dart';

import '../../res/common_widgets/common_button_widget.dart';
import '../../res/common_widgets/common_row_widget.dart';
import '../../res/common_widgets/common_text_field_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              /*SizedBox(
                height: 100.0,
              ),*/
              CommonRowWidget(
                size: 33,
                svgIconMiddle: 'assets/icons/ic_laptop.svg',
                width: 35,
                height: 25,
              ),
              SizedBox(
                height: 100.0,
              ),
              CommonTextFieldWidget(
                  hint: 'Email Address',
                  color: AppColors.grey,
                  prefixIcon: 'assets/icons/ic_email.svg'),
              SizedBox(
                height: 15.0,
              ),
              CommonTextFieldWidget(
                  hint: 'Password',
                  color: AppColors.grey,
                  prefixIcon: 'assets/icons/ic_password.svg'),
              SizedBox(
                height: 40.0,
              ),
              CommonButtonWidget(
                text: 'Sign In',
              ),
              SizedBox(
                height: 10.0,
              ),
              CommonAccountRowWidget(
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

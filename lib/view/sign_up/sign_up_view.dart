import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../constants/app_colors.dart';
import '../../res/common_widgets/common_button_widget.dart';
import '../../res/common_widgets/common_row_widget.dart';
import '../../res/common_widgets/common_text_field_widget.dart';
import '../../res/common_widgets/common_account_row_widget.dart';
import '../../res/routs/routs_name.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
                height: 15.0,
              ),
              CommonTextFieldWidget(
                  hint: 'Confirm Password',
                  color: AppColors.grey,
                  prefixIcon: 'assets/icons/ic_password.svg'),
              SizedBox(
                height: 40.0,
              ),
              CommonButtonWidget(
                text: 'Sign Up',
              ),
              SizedBox(
                height: 10.0,
              ),
              CommonAccountRowWidget(
                textMessage: 'Already have an account? ',
                textScreen: 'Sign In',
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

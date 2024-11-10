import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lap_mart/view_model/controller/login/login_controller.dart';
import 'package:lap_mart/view_model/controller/sign_up/sign_up_controller.dart';
import '../../constants/app_colors.dart';
import '../../res/common_widgets/common_button_widget.dart';
import '../../res/common_widgets/common_row_header_widget.dart';
import '../../res/common_widgets/common_text_form_field_widget.dart';
import '../../res/common_widgets/common_account_row_widget.dart';
import '../../res/routs/routs_name.dart';
import '../../utils/app_utils.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final signUpController = Get.put(SignUpController());
  final _formKeys = GlobalKey<FormState>();
  // final _formKeys = List.generate(3, (index) => GlobalKey<FormState>());

  // final controllers = List.generate(3, (index) => TextEditingController());
  // final formKeys = List.generate(3, (index) => GlobalKey<FormState>());

  @override
  void dispose() {
    signUpController.dispose();
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
                    key: _formKeys,
                    child: Column(
                      children: [
                        CommonTextFormFieldWidget(
                          hint: 'Email Address',
                          customLabel: 'Email',
                          prefixIcon: 'assets/icons/ic_email.svg',
                          controller: signUpController.emailController.value,

                          /*validator: (value) {
                            String? msg = AppUtils.validateEmail(value);
                            AppUtils.mySnackBar(title: 'Alert', message: msg!);
                            // return msg;
                            return null;
                          },*/
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        CommonTextFormFieldWidget(
                          obscure: true,
                          hint: 'Password',
                          customLabel: 'Password',
                          prefixIcon: 'assets/icons/ic_password.svg',
                          controller: signUpController.passwordController.value,
                          /*validator: (value) {
                              // Validate only if email is valid
                              if (_formKeys.currentState?.validate() == true) {
                                String? msg = AppUtils.validatePassword(value);
                                AppUtils.mySnackBar(
                                    title: 'Alert', message: msg!);
                                // return msg;
                              }
                              return null;
                            }*/
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        CommonTextFormFieldWidget(
                          obscure: true,
                          hint: 'Confirm Password',
                          customLabel: 'Confirm Password',
                          prefixIcon: 'assets/icons/ic_password.svg',
                          controller:
                              signUpController.confirmPasswordController.value,

                          /*validator: (value) {
                            // Validate only if email and password are valid
                            if (_formKeys.currentState?.validate() == true) {
                              String? msg = AppUtils.validateConfirmPassword(
                                  value,
                                  signUpController
                                      .passwordController.value.text);
                              AppUtils.mySnackBar(
                                  title: 'Alert', message: msg!);
                              // return msg;
                            }
                            return null;
                          },*/
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 40.0,
                ),
                CommonButtonWidget(
                  text: 'Sign Up',
                  onTap: () => signUpController.signUpUser(_formKeys),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CommonAccountRowWidget(
                  textMessage: 'Already have an account? ',
                  textScreen: 'Sign In',
                  onTap: () => AppUtils.loginView(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

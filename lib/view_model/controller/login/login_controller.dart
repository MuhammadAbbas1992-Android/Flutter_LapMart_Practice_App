import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_utils.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController(text: 'admin123@gmail.com').obs;
  final passwordController = TextEditingController(text: '123456').obs;

  bool showSpinner = false;
  late FirebaseAuth _auth;

  LoginController() {
    // print('yes called LoginController Constructor');
    _auth = FirebaseAuth.instance;
  }

  RxBool loading = false.obs;

  void validateEmail() {}

  void loginUser(dynamic formKey) async {
    /*if (formKey.currentState!.validate()) {
      loading.value = true;
      AppUtils.mySnackBar(
          title: 'Message', message: confirmPasswordController.value.text);
    }*/

    try {
      UserCredential newUser = await _auth.signInWithEmailAndPassword(
          email: emailController.value.text,
          password: passwordController.value.text);
      if (newUser != null) {
        print('NewUser $newUser');
        AppUtils.mySnackBar(title: 'Response', message: 'Login successfully');
        if (emailController.value.text == 'admin123@gmail.com') {
          AppUtils.homeAdminView();
        } else {
          AppUtils.homeView();
        }
      } else {
        AppUtils.mySnackBar(
            title: 'Response', message: 'Error occurred to login');
      }
    } catch (e) {
      AppUtils.mySnackBar(title: 'Response', message: 'Exception Occurred: $e');
    }
  }
}

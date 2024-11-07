import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lap_mart/res/routs/routs_name.dart';
import 'package:lap_mart/utils/app_utils.dart';

class SignUpController extends GetxController {
  final emailController = TextEditingController(text: 'admin123@gmail.com').obs;
  final passwordController = TextEditingController(text: '123456').obs;
  final confirmPasswordController = TextEditingController(text: '123456').obs;

  bool showSpinner = false;
  late FirebaseAuth _auth;

  SignUpController() {
    // print('yes called SignUpController Constructor');
    _auth = FirebaseAuth.instance;
  }

  RxBool loading = false.obs;

  void validateEmail() {}

  void signUpUser(dynamic formKey) async {
    /*if (formKey.currentState!.validate()) {
      loading.value = true;
      AppUtils.mySnackBar(
          title: 'Message', message: confirmPasswordController.value.text);
    }*/

    print('ABC ${emailController.value.text}');
    print('ABC ${passwordController.value.text}');
    print('ABC ${confirmPasswordController.value.text}');
    try {
      UserCredential newUser = await _auth.createUserWithEmailAndPassword(
          email: emailController.value.text,
          password: passwordController.value.text);
      if (newUser != null) {
        print('NewUser $newUser');
        AppUtils.mySnackBar(
            title: 'Response', message: 'New user created successfully');
        AppUtils.homeView();
      } else {
        AppUtils.mySnackBar(
            title: 'Response', message: 'Error occurred for creating new user');
      }
    } catch (e) {
      AppUtils.mySnackBar(title: 'Response', message: 'Exception Occurred: $e');
    }
  }
}

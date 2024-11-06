import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lap_mart/utils/app_utils.dart';

class SignUpController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;

  bool showSpinner = false;
  late FirebaseAuth _auth;

  SignUpController() {
    print('yes called SignUpController Constructor');
    _auth = FirebaseAuth.instance;
  }

  RxBool loading = false.obs;

  void validateEmail() {}

  void signUpUser(dynamic formKey) {
    if (formKey.currentState!.validate()) {
      loading.value = true;
      AppUtils.mySnackBar(
          title: 'Message', message: confirmPasswordController.value.text);
    }

    // print('ABC ${emailController.value}');
    // print('ABC ${passwordController.value}');
    // print('ABC ${confirmPasswordController.value}');
/*
    try {
      UserCredential newUser = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (newUser != null) {
        print(newUser);
        print("New user created successfully");
        Navigator.pop(context);
        // Navigator.pushNamed(context, ChatScreen.id);
        // Navigator.pushNamed(context, ChatScreenV21.id);
        Navigator.pushNamed(context, ChatScreenV22.id);
      } else {
        print("Error occurred for creating new user");
      }
    } catch (e) {
      print("Exception Occurred: $e");
    }*/
  }
}

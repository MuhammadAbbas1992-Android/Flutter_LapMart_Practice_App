import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  bool showSpinner = false;
  late FirebaseAuth _auth;

  LoginController() {
    _auth = FirebaseAuth.instance;
  }

  RxBool loading = false.obs;

  void validateEmail() {}

  void signUpUser() {
    loading.value = true;

    print(emailController.value);
    print(passwordController.value);
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

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lap_mart/model/product_model.dart';
import 'package:lap_mart/res/routs/routs_app.dart';
import 'package:lap_mart/view_model/services/sharedpreferences/shared_preference_services.dart';

import '../res/routs/routs_name.dart';

class AppUtils {
  static bool isUserLogin = false;
  static int productIndex = -1;
  static String category = 'Apple';

  static toggleUserLoginStatus(String user) {
    if (user == 'admin123@gmail.com') {
      isUserLogin = false;
      // SharedPreferenceServices.saveUsername('Admin');
      AppUtils.homeAdminView();
    } else {
      isUserLogin = true;
      // SharedPreferenceServices.saveUsername('User');
      AppUtils.homeView();
    }
  }

  static setProductCategory(String name) {
    category = name;
  }

  static selectedProduct(int index) {
    productIndex = index;
    addProductView();
  }

  static selectedProductDetail(int index) {
    productIndex = index;
    productDetailView();
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Please enter email';
    } else {
      email = email!.trim();
      final emailRegex = RegExp(
        r"^[a-zA-Z0-9.!#$%&\'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z]{2,})+$",
      );

      return emailRegex.hasMatch(email) ? null : "Please enter a valid email";
    }
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 6) {
      return 'Requires at least 6 characters';
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Confirm password is required';
    }
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }

  static void mySnackBar({required String title, required String message}) {
    Get.snackbar(title, message);
  }

  static void loginView() {
    Get.back();
    Get.toNamed(RoutsName.loginView);
  }

  static void signUpView() {
    Get.back();
    Get.toNamed(RoutsName.signUpView);
  }

  static void homeView() {
    Get.back();
    Get.toNamed(RoutsName.homeView);
  }

  static void homeAdminView() {
    Get.back();
    Get.toNamed(RoutsName.homeAdminView);
  }

  static void productsView() {
    Get.back();
    Get.toNamed(RoutsName.productsView);
  }

  static void addProductView() {
    Get.toNamed(RoutsName.addProductView);
  }

  static void productDetailView() {
    Get.toNamed(RoutsName.productsDetailView);
  }

  static void cartView() {
    Get.back();
    Get.toNamed(RoutsName.cartView);
  }

  static void aboutUsView() {
    Get.back();
    Get.toNamed(RoutsName.aboutUsView);
  }

  static void contactUsView() {
    Get.back();
    Get.toNamed(RoutsName.contactUsView);
  }

  static void logout() {
    // SharedPreferenceServices.clearUsername();
    loginView();
  }
}

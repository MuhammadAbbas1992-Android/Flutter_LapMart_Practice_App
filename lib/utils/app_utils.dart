import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lap_mart/model/product_model.dart';
import 'package:lap_mart/res/routs/routs_app.dart';
import 'package:lap_mart/view_model/services/sharedpreferences/shared_preference_services.dart';

import '../res/routs/routs_name.dart';

class AppUtils {
  static bool isUserLogin = false;
  static int productIndex = -1;

  static toggleUserLoginStatus(String user) async {
    if (user == 'admin@gmail.com') {
      isUserLogin = false;
      await SharedPreferenceServices.saveUsername('Admin');
      Get.offNamed(RoutsName.homeAdminView);
    } else {
      isUserLogin = true;
      await SharedPreferenceServices.saveUsername('User');
      Get.offNamed(RoutsName.homeView);
    }
  }

  static selectedProduct(int index) {
    productIndex = index;
    Get.offNamed(RoutsName.addProductView);
  }

  static selectedProductDetail(int index) {
    productIndex = index;
    Get.offNamed(RoutsName.productsDetailView);
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

  static void logout() {
    SharedPreferenceServices.clearUsername();
    Get.offNamed(RoutsName.loginView);
  }
}

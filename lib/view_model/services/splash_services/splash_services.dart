import 'dart:async';

import 'package:get/get.dart';
import 'package:lap_mart/res/routs/routs_name.dart';

class SplashServices {
  void goToLoginScreen() {
    Timer(
      const Duration(seconds: 3),
      () => Get.toNamed(RoutsName.loginView),
    );
  }
}

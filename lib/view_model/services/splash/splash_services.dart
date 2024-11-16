import 'dart:async';

import 'package:get/get.dart';
import 'package:lap_mart/constants/app_constants.dart';
import 'package:lap_mart/res/routs/routs_name.dart';
import 'package:lap_mart/utils/app_utils.dart';
import 'package:lap_mart/view_model/services/sharedpreferences/shared_preference_services.dart';

class SplashServices {
  Future<void> goToLoginScreen() async {
    Timer(
      const Duration(seconds: 3),
      () async {
        String? userName =
            await SharedPreferenceServices.getFromSharedPref(userKey);
        if (userName != null) {
          if (userName == 'admin@gmail.com') {
            Get.offNamed(RoutsName.homeAdminView);
          } else {
            AppUtils.extractEmailPart(userName);
            AppUtils.isUserLogin = true;
            Get.offNamed(RoutsName.homeView);
          }
        } else {
          Get.offNamed(RoutsName.loginView);
        }
      },
    );
  }
}

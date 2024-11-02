import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';

import '../routs/routs_name.dart';

class CommonAccountRowWidget extends StatelessWidget {
  const CommonAccountRowWidget(
      {super.key, required this.textMessage, required this.textScreen});
  final String textMessage;
  final String textScreen;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommonTextWidget(
          text: textMessage,
          color: AppColors.mediumGrey,
        ),
        const SizedBox(
          width: 10.0,
        ),
        InkWell(
          onTap: () {
            Get.back();
            Get.toNamed(RoutsName.signUpView);
          },
          child: CommonTextWidget(
            text: textScreen,
            color: AppColors.pink,
          ),
        )
      ],
    );
  }
}

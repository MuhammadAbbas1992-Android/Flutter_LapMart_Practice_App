import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/res/common_widgets/common_button_widget.dart';

import '../../constants/app_fonts.dart';
import 'common_text_widget.dart';

class CommonRowHeaderWidget extends StatelessWidget {
  const CommonRowHeaderWidget({
    super.key,
    this.size = 16,
    required this.svgIconMiddle,
    this.svgIconLeft,
    this.svgIconRight,
    this.height = 17,
    this.width = 25,
  });

  final double size;
  final String? svgIconLeft;
  final String svgIconMiddle;
  final String? svgIconRight;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: svgIconLeft != null
              ? SvgPicture.asset(
                  svgIconLeft!,
                  color: AppColors.black,
                )
              : null,
        ),
        const Spacer(),
        SvgPicture.asset(
          svgIconMiddle,
          width: width,
          height: height,
        ),
        const SizedBox(
          width: 5.0,
        ),
        CommonTextWidget(
          text: 'LapMart',
          size: size,
          fontWeight: FontWeight.bold,
          fontFamily: AppFonts.interRegular,
        ),
        const Spacer(),
        Center(
          child: svgIconRight != null
              ? SvgPicture.asset(
                  svgIconRight!,
                  color: AppColors.white,
                )
              : const CommonButtonWidget(
                  text: 'Add New',
                  height: 30,
                  width: 70,
                  size: 14,
                ),
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lap_mart/constants/app_assets.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/constants/app_fonts.dart';

class CommonTextWidget extends StatelessWidget {
  const CommonTextWidget(
      {super.key,
      required this.text,
      this.size = 14,
      this.color = AppColors.black,
      this.fontWeight = FontWeight.normal,
      this.fontFamily = AppFonts.interRegular,
      this.textAlign = TextAlign.left});

  final String text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          fontFamily: fontFamily),
      textAlign: textAlign,
    );
  }
}

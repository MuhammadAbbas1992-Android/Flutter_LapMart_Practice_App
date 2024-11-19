import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/constants/app_fonts.dart';

class CommonTextFormFieldWidget extends StatelessWidget {
  final String hint;
  final double size;
  final double height;
  final double radius;
  final bool obscure;
  final String? customLabel;
  final String prefixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CommonTextFormFieldWidget({
    super.key,
    required this.hint,
    this.size = 14.0,
    this.height = 48.0,
    this.radius = 25.0,
    required this.prefixIcon,
    this.controller,
    this.validator,
    this.obscure = false,
    this.customLabel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscure,
        obscuringCharacter: obscure == true ? '*' : '.',
        textAlignVertical: TextAlignVertical.center,
        // maxLines: 1, // Allows the TextField to grow with content
        // expands: true,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 5.0,
              top: 18.0,
              bottom: 18.0,
            ),
            child: SvgPicture.asset(
              prefixIcon!,
            ),
          ),
          hintText: hint,
          contentPadding: const EdgeInsets.only(),
          hintStyle: TextStyle(
              color: AppColors.grey,
              fontFamily: AppFonts.interRegular,
              fontSize: size),
          label: Text(customLabel!),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: const BorderSide(color: AppColors.lightGrey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: const BorderSide(color: AppColors.lightGrey)),
          /*errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: const BorderSide(color: AppColors.lightGrey)),*/
        ),
      ),
    );
  }
}

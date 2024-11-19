import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lap_mart/constants/app_colors.dart';

class CommonTextFieldWidget extends StatelessWidget {
  const CommonTextFieldWidget(
      {super.key,
      this.height = 50.0,
      required this.hint,
      this.size = 12,
      this.radius = 10.0,
      this.color = AppColors.tinGrey,
      this.controller});

  final double height;
  final String hint;
  final double size;
  final double radius;
  final Color color;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextField(
        controller: controller,
        textAlignVertical: TextAlignVertical.top,
        maxLines: null, // Allows the TextField to grow with content
        expands: true,
        style: const TextStyle(
          fontSize: 14, // Font size
          color: Colors.black, // Text color// Font weight
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontFamily: 'inter',
            fontSize: 14.0,
          ),
          fillColor: color,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: AppColors.lightGrey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: AppColors.lightGrey)),
        ),
      ),
    );
  }
}

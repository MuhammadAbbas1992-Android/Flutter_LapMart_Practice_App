import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/constants/app_fonts.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';
import 'package:lap_mart/view_model/controller/add_product/add_product_controller.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    super.key,
    required this.controller,
  });
  final AddProductController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xffE9E9E9),
        border: Border.all(color: const Color(0xFFCBCBCB), width: 1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: DropdownButtonHideUnderline(
        child: Obx(() {
          return DropdownButton<String>(
            hint: CommonTextWidget(
              text: controller.selectedOption.value,
              color: AppColors.black,
              fontWeight: FontWeight.w500,
            ),
            icon: const Icon(Icons.keyboard_arrow_down_sharp),
            isExpanded: true,
            items: controller.options.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: CommonTextWidget(
                  text: value,
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              controller.selectedOption.value = newValue!;
            },
            dropdownColor: AppColors.lightPink,
            style: const TextStyle(
              fontSize: 15,
              color: AppColors.black,
              fontWeight: FontWeight.w500,
            ),
          );
        }),
      ),
    );
  }
}

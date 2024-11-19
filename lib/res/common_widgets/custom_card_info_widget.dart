import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/model/product_model.dart';
import 'package:lap_mart/res/common_widgets/custom_text_widget.dart';
import 'package:lap_mart/utils/app_utils.dart';
import 'package:lap_mart/view_model/services/firebase/firebase_services.dart';

import '../../view_model/controller/home_admin/home_admin_controller.dart';
import '../../view_model/controller/products/products_controller.dart';

class CommonCardInfoWidget extends StatelessWidget {
  const CommonCardInfoWidget({
    super.key,
    this.dotMenuImage,
    required this.productIndex,
    this.onTap,
    this.controller,
  });

  final String? dotMenuImage;
  final int productIndex;
  final VoidCallback? onTap;
  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    // ProductModel productModel = FirebaseServices.categoryList[productIndex];

    return InkWell(
      onTap: onTap,
      child: Card(
          elevation: 5,
          child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () => AppUtils.selectedProduct(productIndex),
                          child: dotMenuImage != null
                              ? AppUtils.isUserLogin
                                  ? SvgPicture.asset(
                                      dotMenuImage!,
                                      color: AppColors.white,
                                    )
                                  : SvgPicture.asset(
                                      dotMenuImage!,
                                    )
                              : null,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      height: 115,
                      child: Image.network(
                        controller.categoryList[productIndex].imageUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(height: 8),
                    CommonTextWidget(
                      text: controller.categoryList[productIndex].name,
                      size: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    CommonTextWidget(
                      text: controller.categoryList[productIndex].price,
                      size: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ))),
    );
  }
}

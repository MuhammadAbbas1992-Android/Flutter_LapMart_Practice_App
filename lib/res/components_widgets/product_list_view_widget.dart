import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';
import 'package:lap_mart/utils/status.dart';
import 'package:lap_mart/view_model/controller/home_admin/home_admin_controller.dart';

import '../../view_model/controller/sign_up/sign_up_controller.dart';
import '../common_widgets/common_card_info_widget.dart';

class ProductListViewWidget extends StatelessWidget {
  // final homeAdminController = Get.put(HomeAdminController());
  const ProductListViewWidget({
    super.key,
    this.controller,
    this.dotMenuImage,
  });
  final dynamic controller;
  final String? dotMenuImage;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 210),
      itemCount: controller?.productList.length,
      itemBuilder: (context, index) {
        return CommonCardInfoWidget(
          image: 'assets/images/laptop.png',
          productIndex: index,
          // name: 'Laptop',
          // price: '300',
          dotMenuImage: dotMenuImage,
          controller: controller,
        );
      },
    );
  }
}

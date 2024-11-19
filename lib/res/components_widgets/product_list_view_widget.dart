import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lap_mart/res/common_widgets/custom_text_widget.dart';
import 'package:lap_mart/utils/status.dart';
import 'package:lap_mart/view_model/controller/home/home_controller.dart';
import 'package:lap_mart/view_model/controller/home_admin/home_admin_controller.dart';
import 'package:lap_mart/view_model/controller/products/products_controller.dart';
import 'package:lap_mart/view_model/services/firebase/firebase_services.dart';

import '../../model/product_model.dart';
import '../../utils/app_utils.dart';
import '../../view_model/controller/sign_up/sign_up_controller.dart';
import '../common_widgets/custom_card_info_widget.dart';

class ProductListViewWidget extends StatelessWidget {
  // final homeAdminController = Get.put(HomeAdminController());
  const ProductListViewWidget({
    super.key,
    this.dotMenuImage,
    this.homeAdminController,
    this.productsController,
  });
  final String? dotMenuImage;
  final HomeAdminController? homeAdminController;
  final ProductsController? productsController;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 210),
      itemCount: AppUtils.isUserLogin
          ? productsController?.categoryList.length
          : homeAdminController?.categoryList.length,
      itemBuilder: (context, index) {
        return CommonCardInfoWidget(
          productIndex: index,
          dotMenuImage: dotMenuImage,
          onTap: AppUtils.isUserLogin
              ? () => AppUtils.selectedProductDetail(index)
              : null,
          controller:
              AppUtils.isUserLogin ? productsController : homeAdminController,
        );
      },
    );
  }
}

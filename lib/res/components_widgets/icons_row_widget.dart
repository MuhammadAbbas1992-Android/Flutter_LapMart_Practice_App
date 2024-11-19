import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lap_mart/utils/app_utils.dart';
import 'package:lap_mart/view_model/controller/home_admin/home_admin_controller.dart';
import 'package:lap_mart/view_model/controller/products/products_controller.dart';
import 'package:lap_mart/view_model/services/firebase/firebase_services.dart';

import '../common_widgets/custom_card_icon_widget.dart';

class IconsRowWidget extends StatelessWidget {
  const IconsRowWidget({
    super.key,
    this.homeAdminController,
    this.productsController,
  });
  final HomeAdminController? homeAdminController;
  final ProductsController? productsController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => AppUtils.isUserLogin
              ? productsController?.getCategory('Hp')
              : homeAdminController?.getCategory('Hp'),
          child: CommonCardIconWidget(
            icon: 'assets/icons/ic_hp.svg',
            padding: 12.0,
          ),
        ),
        InkWell(
          onTap: () => AppUtils.isUserLogin
              ? productsController?.getCategory('Apple')
              : homeAdminController?.getCategory('Apple'),
          child: CommonCardIconWidget(
            icon: 'assets/icons/ic_iphone.svg',
          ),
        ),
        InkWell(
          onTap: () => AppUtils.isUserLogin
              ? productsController?.getCategory('Dell')
              : homeAdminController?.getCategory('Dell'),
          child: CommonCardIconWidget(
            icon: 'assets/icons/ic_dell.svg',
          ),
        ),
        InkWell(
          onTap: () => AppUtils.isUserLogin
              ? productsController?.getCategory('Lenovo')
              : homeAdminController?.getCategory('Lenovo'),
          child: CommonCardIconWidget(
            icon: 'assets/icons/ic_lenovo.svg',
          ),
        ),
      ],
    );
  }
}

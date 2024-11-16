import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';
import 'package:lap_mart/view_model/controller/cart/cart_controller.dart';
import 'package:lap_mart/view_model/services/firebase/firebase_services.dart';
import '../common_widgets/common_cart_widget.dart';

class CartListViewWidget extends StatelessWidget {
  const CartListViewWidget({
    super.key,
    required this.controller,
  });
  final CartController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 480,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: ListView.builder(
          // mainAxisExtent: 210,
          itemCount: FirebaseServices.cartList.length,
          itemBuilder: (context, index) {
            return CommonCartWidget(
              cartIndex: index,
              controller: controller,
            );
          },
        ),
      ),
    );
  }
}

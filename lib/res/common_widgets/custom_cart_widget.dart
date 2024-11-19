import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lap_mart/model/cart_model.dart';
import 'package:lap_mart/view_model/controller/cart/cart_controller.dart';
import 'package:lap_mart/view_model/services/firebase/firebase_services.dart';

import '../../constants/app_colors.dart';
import 'custom_text_widget.dart';

class CommonCartWidget extends StatelessWidget {
  const CommonCartWidget({
    super.key,
    required this.cartIndex,
    this.controller,
  });

  final int cartIndex;
  final CartController? controller;

  @override
  Widget build(BuildContext context) {
    // CartModel? cartModel = controller!.cartList?[cartIndex];
    CartModel? cartModel = FirebaseServices.cartList[cartIndex];
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 140.0,
      decoration: BoxDecoration(
          color: AppColors.lightPink,
          borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 110,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0)),
            ),
            Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 5, 5, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CommonTextWidget(
                      text: cartModel.name,
                      size: 13.0,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonTextWidget(
                      text: 'SAR ${cartModel.price}',
                      size: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonTextWidget(
                      text: 'Qty: ${cartModel.quantity}',
                      size: 12.0,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => controller?.removeCart(
                cartModel.id,
              ),
              child: SizedBox(
                height: double.infinity,
                child: SvgPicture.asset(
                  'assets/icons/ic_delete.svg',
                  alignment: const Alignment(0, .9),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

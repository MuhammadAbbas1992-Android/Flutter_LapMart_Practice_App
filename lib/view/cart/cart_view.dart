import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lap_mart/res/common_widgets/common_button_widget.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';
import 'package:lap_mart/view_model/controller/cart/cart_controller.dart';

import '../../res/common_widgets/common_row_header_widget.dart';
import '../../res/components_widgets/cart_list_view_widget.dart';
import '../../res/components_widgets/row_widget.dart';
import '../nav_bar/nav_bar.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    cartController.sumGrandTotalPayment();
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const NavBar(),
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CommonRowHeaderWidget(
              svgIconLeft: 'assets/icons/ic_menu.svg',
              svgIconMiddle: 'assets/icons/ic_laptop.svg',
              svgIconRight: 'assets/icons/ic_menu.svg',
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
              child: CommonTextWidget(
                text: 'My Cart',
                size: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            CartListViewWidget(
              controller: cartController,
            ),
            RowWidget(
              controller: cartController,
            ),
            const SizedBox(
              height: 30,
            ),
            CommonButtonWidget(
              text: 'Check Out',
              onTap: () => cartController.clearCartList(),
            )
          ],
        ),
      )),
    );
  }
}

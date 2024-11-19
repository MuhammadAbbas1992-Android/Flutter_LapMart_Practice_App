import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lap_mart/res/common_widgets/custom_button_widget.dart';
import 'package:lap_mart/res/common_widgets/custom_text_widget.dart';
import 'package:lap_mart/view_model/controller/cart/cart_controller.dart';
import 'package:lap_mart/view_model/services/firebase/firebase_services.dart';

import '../../res/common_widgets/custom_header_widget.dart';
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    cartController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const NavBar(),
      appBar: AppBar(
        actions: const [
          Spacer(),
          CustomHeaderWidget(),
          Spacer(),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
              child: CommonTextWidget(
                text: 'My Cart',
                size: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Obx(
              () {
                if (cartController.isCartLoading.value) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 200.0, bottom: 200.0),
                      child: SizedBox(
                          width: 100,
                          height: 100,
                          child: CircularProgressIndicator(
                            color: Colors.blueAccent,
                          )),
                    ),
                  );
                } else if (FirebaseServices.cartList.isEmpty) {
                  return const SizedBox(
                      height: 480, child: Center(child: Text('No cart added')));
                } else {
                  return Expanded(
                      child: CartListViewWidget(
                    controller: cartController,
                  ));
                }
              },
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

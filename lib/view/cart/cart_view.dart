import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lap_mart/res/common_widgets/common_button_widget.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';

import '../../res/common_widgets/common_row_header_widget.dart';
import '../../res/components_widgets/cart_list_view_widget.dart';
import '../../res/components_widgets/row_widget.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CommonRowHeaderWidget(
              svgIconLeft: 'assets/icons/ic_menu.svg',
              svgIconMiddle: 'assets/icons/ic_laptop.svg',
              svgIconRight: 'assets/icons/ic_menu.svg',
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
              child: CommonTextWidget(
                text: 'My Cart',
                size: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            CartListViewWidget(),
            RowWidget(
              price: '2697.00',
            ),
            SizedBox(
              height: 30,
            ),
            CommonButtonWidget(text: 'Check Out')
          ],
        ),
      )),
    );
  }
}

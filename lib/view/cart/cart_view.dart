import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lap_mart/res/common_widgets/common_button_widget.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';

import '../../res/common_widgets/common_row_widget.dart';
import '../../res/common_widgets/text_widget.dart';
import '../../res/components_widgets/cart_list_view_widget.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CommonRowWidget(
              size: 16,
              svgIconMiddle: 'assets/icons/ic_laptop.svg',
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
              child: CommonTextWidget(
                text: 'My Cart',
                size: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            CartListViewWidget(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonTextWidget(
                    text: 'Total Payment',
                    size: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  CommonTextWidget(
                      text: 'SAR 2697.00',
                      size: 16,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.right),
                ],
              ),
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

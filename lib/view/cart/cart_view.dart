import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../res/components/row_widget.dart';
import '../../res/components/text_widget.dart';

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
            RowWidget(),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextWidget(
                      text: 'My Cart',
                      size: 16.0,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.left),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 140.0,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFDBED),
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
                                  TextWidget(
                                      text: 'Dell Latitude E5470',
                                      size: 13.0,
                                      fontWeight: FontWeight.bold,
                                      textAlign: TextAlign.left),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextWidget(
                                      text: 'SAR 799.00',
                                      size: 12.0,
                                      fontWeight: FontWeight.bold,
                                      textAlign: TextAlign.left),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextWidget(
                                      text: 'Qty: 1',
                                      size: 12.0,
                                      fontWeight: FontWeight.bold,
                                      textAlign: TextAlign.left)
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: double.infinity,
                            child: SvgPicture.asset(
                              'assets/icons/ic_delete.svg',
                              alignment: Alignment(0, .9),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

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
            RowWidget(
              icon: 'assets/icons/ic_menu.svg',
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
              child: TextWidget(
                  text: 'My Cart',
                  size: 16.0,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.left),
            ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(15.0, 5, 5, 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
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
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(15.0, 5, 5, 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
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
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(15.0, 5, 5, 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
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
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(15.0, 5, 5, 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
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
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(15.0, 5, 5, 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      text: 'Total Payment',
                      size: 16,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.left),
                  TextWidget(
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
            Container(
                width: double.infinity,
                height: 48.0,
                decoration: BoxDecoration(
                    color: const Color(0xFFE77FB3),
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.only(bottom: 40),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Check Out',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    )))
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lap_mart/utils/constants/constants.dart';

import '../../res/components/row_widget.dart';
import '../../res/components/text_widget.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({super.key});

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
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
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              height: 228,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/laptop.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextWidget(
                text: 'Apple Macbook 12 MNYK2 Core M3',
                size: 16.0,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.left),
            SizedBox(
              height: 10,
            ),
            TextWidget(
                text: 'SAR 999.0',
                size: 16,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.left),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(Icons.remove),
                        )),
                  ),
                  Container(
                    width: 1,
                    color: Color(0xFFD0D0D0),
                  ),
                  Container(
                    height: double.infinity,
                    color: Color(0xFFF5F5F5),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Text(
                        '0',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 1,
                    color: Color(0xFFD0D0D0),
                  ),
                  InkWell(
                    child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(Icons.add),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextWidget(
                text: 'Description',
                size: 16,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.left),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: SingleChildScrollView(
                child: TextWidget(
                    text: text5,
                    size: 12,
                    fontWeight: FontWeight.normal,
                    textAlign: TextAlign.justify),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: double.infinity,
              height: 48.0,
              margin: const EdgeInsets.only(bottom: 10),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFE77FB3)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

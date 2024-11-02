import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../res/common_widgets/card_icon_widget.dart';
import '../../res/common_widgets/card_info_widget.dart';
import '../../res/common_widgets/common_row_widget.dart';
import '../../res/common_widgets/text_widget.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CommonRowWidget(
              size: 33,
              svgIconMiddle: 'assets/icons/ic_laptop.svg',
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: TextWidget(
                  text: 'Brands',
                  size: 16.0,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.left),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CardIconWidget(
                  icon: 'constants/icons/ic_hp.svg',
                  padding: 12.0,
                ),
                const CardIconWidget(
                  icon: 'constants/icons/ic_iphone.svg',
                ),
                const CardIconWidget(
                  icon: 'constants/icons/ic_dell.svg',
                ),
                const CardIconWidget(
                  icon: 'constants/icons/ic_lenovo.svg',
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 210),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const CardInfoWidget(
                      image: 'constants/images/laptops.png',
                      name: 'Apple Macbook 12',
                      price: 'SAR 500',
                    );
                  },
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

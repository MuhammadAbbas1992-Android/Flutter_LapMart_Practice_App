import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';
import 'package:lap_mart/constants/app_constants.dart';

import '../../res/common_widgets/common_button_widget.dart';
import '../../res/common_widgets/common_image_widget.dart';
import '../../res/common_widgets/common_row_header_widget.dart';
import '../../res/components_widgets/quantity_counter_widget.dart';

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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CommonRowHeaderWidget(
              svgIconLeft: 'assets/icons/ic_back.svg',
              svgIconMiddle: 'assets/icons/ic_laptop.svg',
              svgIconRight: 'assets/icons/ic_back.svg',
            ),
            const SizedBox(
              height: 10.0,
            ),
            CommonImageWidget(
              image: 'assets/images/laptop.png',
              height: 228,
            ),
            const SizedBox(
              height: 10.0,
            ),
            CommonTextWidget(
              text: 'Apple Macbook 12 MNYK2 Core M3',
              size: 16.0,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            CommonTextWidget(
              text: 'SAR 999.0',
              size: 16,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 20,
            ),
            const QuantityCounterWidget(),
            SizedBox(
              height: 20,
            ),
            CommonTextWidget(
              text: 'Description',
              size: 16,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: SingleChildScrollView(
                child: CommonTextWidget(
                    text: text5, size: 12, textAlign: TextAlign.justify),
              ),
            ),
            const Spacer(),
            const CommonButtonWidget(text: 'Add to Cart'),
            const Spacer()
          ],
        ),
      )),
    );
  }
}

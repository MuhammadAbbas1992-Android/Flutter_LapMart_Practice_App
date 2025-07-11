import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lap_mart/res/common_widgets/custom_text_widget.dart';
import 'package:lap_mart/constants/app_constants.dart';
import 'package:lap_mart/res/routs/routs_name.dart';
import 'package:lap_mart/utils/app_utils.dart';
import 'package:lap_mart/view_model/controller/product_detail/product_detail_controller.dart';

import '../../res/common_widgets/custom_button_widget.dart';
import '../../res/common_widgets/custom_image_widget.dart';
import '../../res/common_widgets/custom_header_widget.dart';
import '../../res/components_widgets/quantity_counter_widget.dart';
import '../nav_bar/nav_bar.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({super.key});

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  final productDetailController = Get.put(ProductDetailController());

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    productDetailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () => Get.toNamed(RoutsName.homeAdminView),
            child: SvgPicture.asset(
              'assets/icons/ic_back.svg',
              color: Colors.black,
              width: 10,
              height: 10,
            ),
          ),
        ),
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
            const SizedBox(
              height: 10.0,
            ),
            const CommonImageWidget(
              image: 'assets/images/laptop.png',
              height: 228,
            ),
            const SizedBox(
              height: 10.0,
            ),
            CommonTextWidget(
              text: productDetailController.productModel.name,
              size: 16.0,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            CommonTextWidget(
              text: 'SAR ${productDetailController.productModel.price}',
              size: 16,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 20,
            ),
            QuantityCounterWidget(),
            const SizedBox(
              height: 20,
            ),
            const CommonTextWidget(
              text: 'Description',
              size: 16,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 120,
              child: SingleChildScrollView(
                child: CommonTextWidget(
                    text: productDetailController.productModel.description,
                    size: 12,
                    textAlign: TextAlign.justify),
              ),
            ),
            const Spacer(),
            CommonButtonWidget(
              text: 'Add to Cart',
              onTap: () => productDetailController.uploadCart(),
            ),
            const Spacer()
          ],
        ),
      )),
    );
  }
}

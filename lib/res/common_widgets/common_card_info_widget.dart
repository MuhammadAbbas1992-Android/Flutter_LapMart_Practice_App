import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lap_mart/model/product_model.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';
import 'package:lap_mart/utils/app_utils.dart';
import 'package:lap_mart/view_model/controller/home_admin/home_admin_controller.dart';
import 'package:lap_mart/view_model/services/firebase/firebase_services.dart';

class CommonCardInfoWidget extends StatelessWidget {
  const CommonCardInfoWidget({
    super.key,
    required this.image,
    this.dotMenuImage,
    required this.productIndex,
    this.onTap,
  });

  final String image;
  final String? dotMenuImage;
  final int productIndex;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    ProductModel productModel = FirebaseServices.categoryList[productIndex];
    return InkWell(
      onTap: onTap,
      child: Card(
          elevation: 6,
          child: Container(
              height: 210,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () => AppUtils.selectedProduct(productIndex),
                          child: dotMenuImage != null
                              ? SvgPicture.asset(dotMenuImage!)
                              : null,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 115,
                      child: Image.asset(
                        image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(height: 10),
                    CommonTextWidget(
                      text: productModel.name,
                      size: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CommonTextWidget(
                      text: productModel.price,
                      size: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ))),
    );
  }
}

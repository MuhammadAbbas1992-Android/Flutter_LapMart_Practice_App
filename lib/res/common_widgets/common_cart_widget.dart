import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_colors.dart';
import 'common_text_widget.dart';

class CommonCartWidget extends StatelessWidget {
  const CommonCartWidget({
    super.key,
    required this.name,
    required this.price,
    required this.quantity,
  });
  final String name;
  final String price;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 140.0,
      decoration: BoxDecoration(
          color: AppColors.lightPink,
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
                    CommonTextWidget(
                      text: name,
                      size: 13.0,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonTextWidget(
                      text: 'SAR $price',
                      size: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonTextWidget(
                      text: 'Qty: $quantity',
                      size: 12.0,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: double.infinity,
              child: SvgPicture.asset(
                'assets/icons/ic_delete.svg',
                alignment: const Alignment(0, .9),
              ),
            )
          ],
        ),
      ),
    );
  }
}

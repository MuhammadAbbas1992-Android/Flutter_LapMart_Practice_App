import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';

import '../common_widgets/common_cart_widget.dart';
import '../common_widgets/text_widget.dart';

class CartListViewWidget extends StatelessWidget {
  const CartListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 480,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: ListView.builder(
          // mainAxisExtent: 210,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const CommonCartWidget(
              name: 'Dell Latitude E5470',
              price: '799.00',
              quantity: '1',
            );
          },
        ),
      ),
    );
  }
}

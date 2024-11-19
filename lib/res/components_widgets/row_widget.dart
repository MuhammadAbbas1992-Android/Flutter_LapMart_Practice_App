import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../common_widgets/custom_text_widget.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    this.controller,
  });
  final dynamic controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CommonTextWidget(
            text: 'Total Payment',
            size: 16,
            fontWeight: FontWeight.bold,
          ),
          Obx(
            () => CommonTextWidget(
                text: 'SAR ${controller.grandTotalPayment.value}',
                size: 16,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.right),
          ),
        ],
      ),
    );
  }
}

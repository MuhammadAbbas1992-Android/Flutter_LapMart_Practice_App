import 'package:flutter/cupertino.dart';

import '../common_widgets/common_text_widget.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    required this.price,
  });
  final String price;

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
          CommonTextWidget(
              text: 'SAR $price',
              size: 16,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.right),
        ],
      ),
    );
  }
}

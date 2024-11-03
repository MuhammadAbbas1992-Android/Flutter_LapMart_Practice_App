import 'package:flutter/cupertino.dart';

import '../common_widgets/common_card_info_widget.dart';

class ProductListViewWidget extends StatelessWidget {
  const ProductListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
            return const CommonCardInfoWidget(
              image: 'assets/images/laptops.png',
              name: 'Apple Macbook 12',
              price: 'SAR 500',
            );
          },
        ),
      ),
    );
  }
}

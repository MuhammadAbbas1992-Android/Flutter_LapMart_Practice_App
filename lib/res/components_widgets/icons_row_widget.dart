import 'package:flutter/cupertino.dart';

import '../common_widgets/common_card_icon_widget.dart';

class IconsRowWidget extends StatelessWidget {
  const IconsRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonCardIconWidget(
          icon: 'assets/icons/ic_hp.svg',
          padding: 12.0,
        ),
        CommonCardIconWidget(
          icon: 'assets/icons/ic_iphone.svg',
        ),
        CommonCardIconWidget(
          icon: 'assets/icons/ic_dell.svg',
        ),
        CommonCardIconWidget(
          icon: 'assets/icons/ic_lenovo.svg',
        ),
      ],
    );
  }
}

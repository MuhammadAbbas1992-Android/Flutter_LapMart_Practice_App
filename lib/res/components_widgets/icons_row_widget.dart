import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lap_mart/utils/app_utils.dart';

import '../common_widgets/common_card_icon_widget.dart';

class IconsRowWidget extends StatelessWidget {
  const IconsRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => AppUtils.setProductCategory('Hp'),
          child: const CommonCardIconWidget(
            icon: 'assets/icons/ic_hp.svg',
            padding: 12.0,
          ),
        ),
        InkWell(
          onTap: () => AppUtils.setProductCategory('Hp'),
          child: CommonCardIconWidget(
            icon: 'assets/icons/ic_iphone.svg',
          ),
        ),
        InkWell(
          onTap: () => AppUtils.setProductCategory('Hp'),
          child: CommonCardIconWidget(
            icon: 'assets/icons/ic_dell.svg',
          ),
        ),
        InkWell(
          onTap: () => AppUtils.setProductCategory('Hp'),
          child: CommonCardIconWidget(
            icon: 'assets/icons/ic_lenovo.svg',
          ),
        ),
      ],
    );
  }
}

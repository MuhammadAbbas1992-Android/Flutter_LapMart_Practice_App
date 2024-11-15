import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lap_mart/utils/app_utils.dart';
import 'package:lap_mart/view_model/controller/home_admin/home_admin_controller.dart';
import 'package:lap_mart/view_model/services/firebase/firebase_services.dart';

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
          // onTap: () => HomeAdminController.loadProductCategory('Hp'),
          child: const CommonCardIconWidget(
            icon: 'assets/icons/ic_hp.svg',
            padding: 12.0,
          ),
        ),
        InkWell(
          // onTap: () => HomeAdminController.loadProductCategory('Apple'),
          child: const CommonCardIconWidget(
            icon: 'assets/icons/ic_iphone.svg',
          ),
        ),
        InkWell(
          // onTap: () => HomeAdminController.loadProductCategory('Dell'),
          child: const CommonCardIconWidget(
            icon: 'assets/icons/ic_dell.svg',
          ),
        ),
        InkWell(
          // onTap: () => HomeAdminController.loadProductCategory('Lenovo'),
          child: const CommonCardIconWidget(
            icon: 'assets/icons/ic_lenovo.svg',
          ),
        ),
      ],
    );
  }
}

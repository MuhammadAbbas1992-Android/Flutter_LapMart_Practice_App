import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lap_mart/utils/app_utils.dart';
import 'package:lap_mart/view/home/home_view.dart';

import '../../res/common_widgets/common_icon_button_widget.dart';
import '../../res/routs/routs_name.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.5,
      shape: const LinearBorder(),
      child: SafeArea(
          child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 10),
              child: SvgPicture.asset(
                'assets/icons/ic_back.svg',
                alignment: Alignment.centerLeft,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => Get.offNamed(RoutsName.homeView),
              child: const CommonIconButtonWidget(
                  icon: 'assets/icons/ic_home.svg', text: 'Home'),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => Get.offNamed(RoutsName.productsView),
              child: const CommonIconButtonWidget(
                  icon: 'assets/icons/ic_product.svg', text: 'Products'),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => Get.offNamed(RoutsName.cartView),
              child: const CommonIconButtonWidget(
                  icon: 'assets/icons/ic_cart.svg', text: 'Cart'),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => Get.offNamed(RoutsName.aboutUsView),
              child: const CommonIconButtonWidget(
                  icon: 'assets/icons/ic_about_us.svg', text: 'About us'),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => Get.offNamed(RoutsName.contactUsView),
              child: const CommonIconButtonWidget(
                  icon: 'assets/icons/ic_contact_us.svg', text: 'Contact us'),
            ),
            const Spacer(),
            InkWell(
              onTap: () => AppUtils.logout(),
              child: const CommonIconButtonWidget(
                  icon: 'assets/icons/ic_sign_out.svg', text: 'Sign Out'),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      )),
    );
  }
}

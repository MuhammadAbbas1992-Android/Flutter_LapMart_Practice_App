import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../res/common_widgets/icon_button_widget.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.5,
      shape: LinearBorder(),
      child: SafeArea(
          child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SvgPicture.asset(
                'constants/icons/ic_back.svg',
                alignment: Alignment.centerLeft,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            IconButtonWidget(icon: 'constants/icons/ic_home.svg', text: 'Home'),
            SizedBox(
              height: 10,
            ),
            IconButtonWidget(
                icon: 'constants/icons/ic_product.svg', text: 'Products'),
            SizedBox(
              height: 10,
            ),
            IconButtonWidget(icon: 'constants/icons/ic_cart.svg', text: 'Cart'),
            SizedBox(
              height: 10,
            ),
            IconButtonWidget(
                icon: 'constants/icons/ic_about_us.svg', text: 'About us'),
            SizedBox(
              height: 10,
            ),
            IconButtonWidget(
                icon: 'constants/icons/ic_contact_us.svg', text: 'Contact us'),
            Spacer(),
            IconButtonWidget(
                icon: 'constants/icons/ic_sign_out.svg', text: 'Sign Out'),
            SizedBox(
              height: 50,
            )
          ],
        ),
      )),
    );
  }
}

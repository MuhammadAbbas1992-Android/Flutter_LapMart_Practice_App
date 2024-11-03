import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';
import 'package:lap_mart/utils/constants/string_constants.dart';
import '../../res/common_widgets/common_row_header_widget.dart';
import '../../res/common_widgets/common_email_widget.dart';
import '../../res/common_widgets/text_widget.dart';

class ContactUsView extends StatefulWidget {
  const ContactUsView({super.key});

  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CommonRowHeaderWidget(
              svgIconLeft: 'assets/icons/ic_menu.svg',
              svgIconMiddle: 'assets/icons/ic_laptop.svg',
              svgIconRight: 'assets/icons/ic_menu.svg',
            ),
            SizedBox(
              height: 30.0,
            ),
            CommonTextWidget(
              text: 'Contact Us',
              size: 18,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            CommonTextWidget(text: contactText),
            SizedBox(
              height: 20.0,
            ),
            CommonTextWidget(
              text: 'Lolwah Altayyar',
              size: 18,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            CommonEmailWidget(text: 'Lolwah@gmail.com'),
            SizedBox(
              height: 20.0,
            ),
            CommonTextWidget(
              text: 'Razan  Arishi',
              size: 18.0,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            CommonEmailWidget(text: 'Razan@gmail.com'),
            SizedBox(
              height: 20.0,
            ),
            CommonTextWidget(
              text: 'Nouf Aljammaz',
              size: 18.0,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            CommonEmailWidget(text: 'Nouf@gmail.com'),
            SizedBox(
              height: 20.0,
            ),
            CommonTextWidget(
              text: 'Khloud Alshahrani',
              size: 18.0,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            CommonEmailWidget(text: 'Khloud@gmail.com'),
          ],
        ),
      )),
    );
  }
}

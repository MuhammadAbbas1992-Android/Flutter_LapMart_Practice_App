import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lap_mart/res/components/row_widget.dart';
import 'package:lap_mart/utils/constants/constants.dart';

import '../../res/components/email_widget.dart';
import '../../res/components/text_widget.dart';

class AboutUsView extends StatefulWidget {
  const AboutUsView({super.key});

  @override
  State<AboutUsView> createState() => _AboutUsViewState();
}

class _AboutUsViewState extends State<AboutUsView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RowWidget(
              icon: 'assets/icons/ic_menu.svg',
            ),
            SizedBox(
              height: 40.0,
            ),
            TextWidget(
                text: 'About Us',
                size: 18.0,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center),
            SizedBox(
              height: 20.0,
            ),
            TextWidget(
              text: 'Lolwah Altayyar ',
              size: 14.0,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.left,
            ),
            TextWidget(
                text: text1,
                size: 14.0,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.justify),
            SizedBox(
              height: 20.0,
            ),
            TextWidget(
              text: 'Razan  Arishi',
              size: 14.0,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.left,
            ),
            TextWidget(
                text: text2,
                size: 14.0,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.justify),
            SizedBox(
              height: 20.0,
            ),
            TextWidget(
              text: 'Nouf Aljammaz',
              size: 14.0,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.left,
            ),
            TextWidget(
                text: text3,
                size: 14.0,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.justify),
            SizedBox(
              height: 20.0,
            ),
            TextWidget(
              text: 'Khloud Alshahrani',
              size: 14.0,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.left,
            ),
            TextWidget(
                text: text4,
                size: 14.0,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.justify),
          ],
        ),
      )),
    );
  }
}

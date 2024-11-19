import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lap_mart/res/common_widgets/custom_text_widget.dart';
import 'package:lap_mart/constants/app_constants.dart';

import '../../res/common_widgets/custom_header_widget.dart';
import '../nav_bar/nav_bar.dart';

class AboutUsView extends StatefulWidget {
  const AboutUsView({super.key});

  @override
  State<AboutUsView> createState() => _AboutUsViewState();
}

class _AboutUsViewState extends State<AboutUsView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const NavBar(),
      appBar: AppBar(
        actions: const [
          Spacer(),
          CustomHeaderWidget(),
          Spacer(),
        ],
      ),
      body: const SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CommonTextWidget(
                text: 'About Us',
                size: 18.0,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center),
            SizedBox(
              height: 20.0,
            ),
            CommonTextWidget(
              text: 'Lolwah Altayyar ',
              fontWeight: FontWeight.bold,
            ),
            CommonTextWidget(text: text1, textAlign: TextAlign.justify),
            SizedBox(
              height: 20.0,
            ),
            CommonTextWidget(
              text: 'Razan  Arishi',
              fontWeight: FontWeight.bold,
            ),
            CommonTextWidget(text: text2, textAlign: TextAlign.justify),
            SizedBox(
              height: 20.0,
            ),
            CommonTextWidget(
              text: 'Nouf Aljammaz',
              fontWeight: FontWeight.bold,
            ),
            CommonTextWidget(text: text3, textAlign: TextAlign.justify),
            SizedBox(
              height: 20.0,
            ),
            CommonTextWidget(
              text: 'Khloud Alshahrani',
              fontWeight: FontWeight.bold,
            ),
            CommonTextWidget(text: text4, textAlign: TextAlign.justify),
          ],
        ),
      )),
    );
  }
}

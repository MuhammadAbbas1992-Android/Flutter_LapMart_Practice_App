import 'package:flutter/material.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';
import 'package:lap_mart/constants/app_constants.dart';
import '../../res/common_widgets/common_email_widget.dart';
import '../../res/common_widgets/custom_header_widget.dart';
import '../nav_bar/nav_bar.dart';

class ContactUsView extends StatefulWidget {
  const ContactUsView({super.key});

  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
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

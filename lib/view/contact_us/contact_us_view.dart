import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lap_mart/res/components/email_widget.dart';
import 'package:lap_mart/res/components/row_widget.dart';
import 'package:lap_mart/res/components/text_widget.dart';

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
            RowWidget(),
            SizedBox(
              height: 30.0,
            ),
            TextWidget(
                text: 'Contact Us',
                size: 18.0,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center),
            SizedBox(
              height: 20.0,
            ),
            TextWidget(
              text:
                  'If you  have any inquiries get in touch with us. We will be happy to help you.',
              size: 14,
              fontWeight: FontWeight.normal,
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextWidget(
              text: 'Lolwah Altayyar',
              size: 18.0,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            EmailWidget(text: 'Lolwah@gmail.com'),
            SizedBox(
              height: 20.0,
            ),
            TextWidget(
              text: 'Razan  Arishi',
              size: 18.0,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            EmailWidget(text: 'Razan@gmail.com'),
            SizedBox(
              height: 20.0,
            ),
            TextWidget(
              text: 'Nouf Aljammaz',
              size: 18.0,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            EmailWidget(text: 'Nouf@gmail.com'),
            SizedBox(
              height: 20.0,
            ),
            TextWidget(
              text: 'Khloud Alshahrani',
              size: 18.0,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            EmailWidget(text: 'Khloud@gmail.com'),
          ],
        ),
      )),
    );
  }
}

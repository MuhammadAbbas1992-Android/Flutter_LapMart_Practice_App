import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lap_mart/utils/constants/constants.dart';
import 'package:lap_mart/view/nav_bar/nav_bar.dart';

import '../../res/components/row_widget.dart';
import '../../res/components/text_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavBar(),
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: RowWidget(
                icon: 'assets/icons/ic_menu.svg',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              height: 285,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/home_img.png'), // Update with your image path
                  fit: BoxFit
                      .cover, // BoxFit to control how the image should be fitted
                ),
              ),
              child: Image(image: AssetImage('assets/icons/ic_play.png')),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextWidget(
                  text: 'About us',
                  size: 20,
                  color: Color(0xFFE77FB3),
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.left),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                child: SingleChildScrollView(
                  child: TextWidget(
                      text: homeText,
                      size: 12,
                      fontWeight: FontWeight.normal,
                      textAlign: TextAlign.justify),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

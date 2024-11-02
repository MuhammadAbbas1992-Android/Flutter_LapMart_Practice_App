import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';
import 'package:lap_mart/res/components_widgets/video_play_widget.dart';
import 'package:lap_mart/utils/constants/string_constants.dart';
import 'package:lap_mart/view/nav_bar/nav_bar.dart';

import '../../res/common_widgets/common_row_widget.dart';
import '../../res/common_widgets/text_widget.dart';

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
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: CommonRowWidget(
                svgIconLeft: 'assets/icons/ic_menu.svg',
                svgIconMiddle: 'assets/icons/ic_laptop.svg',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            VideoPlayWidget(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CommonTextWidget(
                text: 'About us',
                size: 20,
                color: AppColors.pink,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: CommonTextWidget(
                  text: homeText,
                  size: 12,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

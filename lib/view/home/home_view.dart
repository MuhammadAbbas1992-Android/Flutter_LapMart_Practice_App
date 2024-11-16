import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';
import 'package:lap_mart/res/common_widgets/custom_header_widget.dart';
import 'package:lap_mart/res/components_widgets/video_play_widget.dart';
import 'package:lap_mart/constants/app_constants.dart';
import 'package:lap_mart/view/nav_bar/nav_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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

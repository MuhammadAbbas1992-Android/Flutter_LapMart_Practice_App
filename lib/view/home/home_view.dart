import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
              child: TextWidget(
                  text: 'My Cart',
                  size: 16.0,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.left),
            ),
          ],
        ),
      )),
    );
  }
}

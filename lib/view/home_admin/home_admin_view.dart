import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../res/common_widgets/common_row_header_widget.dart';
import '../../res/components_widgets/icons_row_widget.dart';
import '../../res/components_widgets/product_list_view_widget.dart';

class HomeAdminView extends StatefulWidget {
  const HomeAdminView({super.key});

  @override
  State<HomeAdminView> createState() => _HomeAdminViewState();
}

class _HomeAdminViewState extends State<HomeAdminView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CommonRowHeaderWidget(
              svgIconLeft: 'assets/icons/ic_sign_out.svg',
              svgIconMiddle: 'assets/icons/ic_laptop.svg',
            ),
            const SizedBox(
              height: 20.0,
            ),
            const IconsRowWidget(),
            const SizedBox(height: 10),
            ProductListViewWidget()
          ],
        ),
      )),
    );
  }
}

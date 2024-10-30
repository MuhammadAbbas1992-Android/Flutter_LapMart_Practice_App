import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lap_mart/res/components/button_widget.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    required this.icon,
    this.iconColor = Colors.black,
    this.isAddNewButton = false,
    this.height = 0,
    this.size = 0,
    this.flexLeft = 1,
    this.flexCenter = 8,
    this.flexRight = 1,
  });
  final String icon;
  final Color iconColor;
  final bool isAddNewButton;
  final double height;
  final double size;
  final int flexLeft, flexCenter, flexRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 0,
          child: Container(
            child: SvgPicture.asset(
              icon,
              color: iconColor,
            ),
          ),
        ),
        Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/ic_laptop.svg',
                  width: 24.0,
                  height: 17.0,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                const Text(
                  'LapMart',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            )),
        Expanded(
          child: isAddNewButton
              ? const ButtonWidget(
                  text: 'Add New',
                  width: 94,
                  height: 33,
                  size: 14,
                )
              : const SizedBox(
                  width: double.infinity,
                ),
        ),
      ],
    );
  }
}

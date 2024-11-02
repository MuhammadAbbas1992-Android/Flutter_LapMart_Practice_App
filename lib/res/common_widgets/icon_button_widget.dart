import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lap_mart/res/common_widgets/text_widget.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget(
      {super.key,
      required this.icon,
      required this.text,
      this.size = 12,
      this.color = Colors.white});

  final String icon;
  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 34,
      color: Color(0xffE77FB3),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: SvgPicture.asset(
              icon,
              color: color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: TextWidget(
                text: text,
                size: size,
                color: color,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.left),
          ),
        ],
      ),
    );
  }
}

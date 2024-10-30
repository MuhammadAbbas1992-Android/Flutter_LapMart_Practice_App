import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardIconWidget extends StatelessWidget {
  const CardIconWidget({
    super.key,
    required this.icon,
    this.padding = 10,
  });

  final String icon;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Container(
          width: 70,
          height: 50,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(padding!),
            child: SvgPicture.asset(icon),
          )),
    );
  }
}

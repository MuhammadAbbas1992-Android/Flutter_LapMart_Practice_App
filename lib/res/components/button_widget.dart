import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    this.width = double.infinity,
    this.height = 48.0,
    this.size = 16.0,
  });
  final String text;
  final double width;
  final double height;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: const Color(0xFFE77FB3),
            borderRadius: BorderRadius.circular(10)),
        child: TextButton(
            onPressed: () {},
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: size),
            )));
  }
}

import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      required this.size,
      required this.fontWeight,
      required this.textAlign});
  final String text;
  final double size;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, fontWeight: fontWeight),
      textAlign: textAlign,
    );
  }
}

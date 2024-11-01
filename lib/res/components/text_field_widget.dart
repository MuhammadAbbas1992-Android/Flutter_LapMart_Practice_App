import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key, this.height = 50.0, required this.hint, this.size = 12});

  final double height;
  final String hint;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextField(
        textAlignVertical: TextAlignVertical.top,
        maxLines: null, // Allows the TextField to grow with content
        expands: true,
        style: const TextStyle(
          fontSize: 14, // Font size
          color: Colors.black, // Text color// Font weight
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontFamily: 'Inter',
            fontSize: 14.0,
          ),
          fillColor: Color(0xffE9E9E9),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Color(0xFFCBCBCB))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Color(0xFFCBCBCB))),
        ),
      ),
    );
  }
}

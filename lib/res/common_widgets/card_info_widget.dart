import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lap_mart/res/common_widgets/text_widget.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.price});

  final String image;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
            elevation: 6,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: Image.asset(
                          image,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextWidget(
                          text: name,
                          size: 12,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.left),
                      const SizedBox(
                        height: 5,
                      ),
                      TextWidget(
                          text: price,
                          size: 12,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.left),
                    ],
                  ),
                ))));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';

class CommonCardInfoWidget extends StatelessWidget {
  const CommonCardInfoWidget(
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
                      CommonTextWidget(
                        text: name,
                        size: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CommonTextWidget(
                        text: price,
                        size: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ))));
  }
}

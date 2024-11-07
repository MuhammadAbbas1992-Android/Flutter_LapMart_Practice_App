import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';

class CommonCardInfoWidget extends StatelessWidget {
  const CommonCardInfoWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      this.dotMenuImage});

  final String image;
  final String name;
  final String price;
  final String? dotMenuImage;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 6,
        child: Container(
            height: 210,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        child: dotMenuImage != null
                            ? SvgPicture.asset(dotMenuImage!)
                            : null,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 115,
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 10),
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
            )));
  }
}

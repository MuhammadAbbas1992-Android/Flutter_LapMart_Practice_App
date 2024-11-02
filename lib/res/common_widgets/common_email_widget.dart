import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';

class CommonEmailWidget extends StatelessWidget {
  const CommonEmailWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            border: Border.all(color: Colors.black)),
        child: SizedBox(
          width: double.infinity,
          height: 53.0,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SvgPicture.asset(
                    'assets/icons/ic_email_1.svg',
                  ),
                ),
              ),
              Expanded(
                  flex: 8,
                  child: CommonTextWidget(
                    text: text,
                    size: 16,
                    textAlign: TextAlign.center,
                  )),
              const Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

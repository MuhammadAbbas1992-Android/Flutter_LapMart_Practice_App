import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmailWidget extends StatelessWidget {
  const EmailWidget({super.key, required this.text});
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
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
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

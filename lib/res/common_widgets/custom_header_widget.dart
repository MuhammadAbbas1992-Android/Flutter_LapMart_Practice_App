import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_fonts.dart';
import 'custom_text_widget.dart';

class CustomHeaderWidget extends StatelessWidget {
  final double? size;
  final double? height;
  final double? width;
  const CustomHeaderWidget(
      {super.key, this.size = 16, this.height = 17, this.width = 24});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/icons/ic_laptop.svg',
          width: width,
          height: height,
        ),
        const SizedBox(
          width: 5.0,
        ),
        CommonTextWidget(
          text: 'LapMart',
          size: size,
          fontWeight: FontWeight.bold,
          fontFamily: AppFonts.interRegular,
        ),
      ],
    );
  }
}

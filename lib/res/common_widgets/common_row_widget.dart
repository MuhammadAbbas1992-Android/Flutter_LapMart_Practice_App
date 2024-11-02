import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_fonts.dart';
import 'common_text_widget.dart';

class CommonRowWidget extends StatelessWidget {
  const CommonRowWidget(
      {super.key,
      this.size = 16,
      required this.svgIconMiddle,
      this.svgIconLeft,
      this.height = 17,
      this.width = 25});

  final double size;
  final String svgIconMiddle;
  final String? svgIconLeft;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: svgIconLeft != null
              ? SvgPicture.asset(
                  svgIconLeft!,
                )
              : null,
        ),
        Spacer(),
        SvgPicture.asset(
          svgIconMiddle,
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
        Spacer(),
      ],
    );
  }
}

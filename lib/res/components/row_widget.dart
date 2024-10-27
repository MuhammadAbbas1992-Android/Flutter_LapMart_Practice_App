import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: SvgPicture.asset('assets/icons/ic_menu.svg'),
        ),
        Expanded(
            flex: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/ic_laptop.svg',
                  width: 24.0,
                  height: 17.0,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                const Text(
                  'LapMart',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            )),
        const Expanded(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
          ),
        ),
      ],
    );
  }
}

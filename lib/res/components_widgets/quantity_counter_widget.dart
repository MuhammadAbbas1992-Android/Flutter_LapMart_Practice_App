import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/res/common_widgets/common_button_widget.dart';

class QuantityCounterWidget extends StatelessWidget {
  const QuantityCounterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            child: Container(
                height: double.infinity,
                decoration: const BoxDecoration(
                    color: AppColors.offWhite,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(Icons.remove),
                )),
          ),
          Container(
            width: 1,
            color: AppColors.lightGrey,
          ),
          Container(
            height: double.infinity,
            color: AppColors.offWhite,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Text(
                '0',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 1,
            color: AppColors.lightGrey,
          ),
          InkWell(
            child: Container(
                height: double.infinity,
                decoration: const BoxDecoration(
                    color: AppColors.offWhite,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(Icons.add),
                )),
          ),
        ],
      ),
    );
  }
}

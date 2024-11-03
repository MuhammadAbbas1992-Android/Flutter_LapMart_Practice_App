import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/constants/app_fonts.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  final List<String> _options = ['Apple', 'Dell', 'Hp', 'Lenovo'];
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xffE9E9E9),
        border: Border.all(color: const Color(0xFFCBCBCB), width: 1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: const CommonTextWidget(
            text: 'Choose Brand',
            color: AppColors.black,
            fontWeight: FontWeight.w500,
          ),
          value: _selectedOption,
          icon: const Icon(
            Icons.keyboard_arrow_down_sharp,
          ),
          isExpanded: true,
          items: _options.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: CommonTextWidget(
                text: value,
                color: AppColors.black,
                fontWeight: FontWeight.w500,
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedOption = newValue;
            });
          },
          dropdownColor: AppColors.lightPink,
          style: const TextStyle(
            fontSize: 15,
            color: AppColors.black,
            fontWeight: FontWeight.w500,
          ),
          menuWidth: 100,
        ),
      ),
    );
  }
}

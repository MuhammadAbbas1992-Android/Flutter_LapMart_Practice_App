import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          hint: const Text(
            'Choose Brand',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'inter',
              fontSize: 14.0,
            ),
          ),
          value: _selectedOption,
          icon: const Icon(
            Icons.keyboard_arrow_down_sharp,
          ),
          isExpanded: true,
          items: _options.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'inter',
                  fontSize: 14.0,
                ),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedOption = newValue;
            });
          },
          dropdownColor: const Color(0xffFFDBED),
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
          menuWidth: 100,
        ),
      ),
    );
  }
}

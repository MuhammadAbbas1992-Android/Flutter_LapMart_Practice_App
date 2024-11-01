import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lap_mart/res/components/button_widget.dart';
import 'package:lap_mart/res/components/dropdown_widget.dart';
import 'package:lap_mart/res/components/text_field_widget.dart';

import '../../res/components/row_widget.dart';
import '../../res/components/text_widget.dart';

class AddProductView extends StatefulWidget {
  const AddProductView({super.key});

  @override
  State<AddProductView> createState() => _AddProductViewState();
}

class _AddProductViewState extends State<AddProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RowWidget(
              icon: 'assets/icons/ic_back.svg',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  TextWidget(
                      text: 'Add New Device',
                      size: 20.0,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 143,
                    decoration: BoxDecoration(
                      color: const Color(0xffE9E9E9),
                      border:
                          Border.all(color: const Color(0xFFCBCBCB), width: 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: TextWidget(
                        text: '+ Add Image',
                        size: 14,
                        fontWeight: FontWeight.normal,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldWidget(hint: 'Product Name'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldWidget(
                    hint: 'Price',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldWidget(
                    hint: 'Price',
                    height: 115,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ButtonWidget(text: 'ADD')
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

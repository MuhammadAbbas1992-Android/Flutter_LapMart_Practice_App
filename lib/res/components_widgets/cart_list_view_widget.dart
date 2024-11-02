import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common_widgets/text_widget.dart';

class CartListViewWidget extends StatelessWidget {
  const CartListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 140.0,
                decoration: BoxDecoration(
                    color: Color(0xFFFFDBED),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 5, 5, 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextWidget(
                                  text: 'Dell Latitude E5470',
                                  size: 13.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left),
                              SizedBox(
                                height: 10,
                              ),
                              TextWidget(
                                  text: 'SAR 799.00',
                                  size: 12.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left),
                              SizedBox(
                                height: 10,
                              ),
                              TextWidget(
                                  text: 'Qty: 1',
                                  size: 12.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        child: SvgPicture.asset(
                          'constants/icons/ic_delete.svg',
                          alignment: Alignment(0, .9),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 140.0,
                decoration: BoxDecoration(
                    color: Color(0xFFFFDBED),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 5, 5, 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextWidget(
                                  text: 'Dell Latitude E5470',
                                  size: 13.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left),
                              SizedBox(
                                height: 10,
                              ),
                              TextWidget(
                                  text: 'SAR 799.00',
                                  size: 12.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left),
                              SizedBox(
                                height: 10,
                              ),
                              TextWidget(
                                  text: 'Qty: 1',
                                  size: 12.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        child: SvgPicture.asset(
                          'constants/icons/ic_delete.svg',
                          alignment: Alignment(0, .9),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 140.0,
                decoration: BoxDecoration(
                    color: Color(0xFFFFDBED),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 5, 5, 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextWidget(
                                  text: 'Dell Latitude E5470',
                                  size: 13.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left),
                              SizedBox(
                                height: 10,
                              ),
                              TextWidget(
                                  text: 'SAR 799.00',
                                  size: 12.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left),
                              SizedBox(
                                height: 10,
                              ),
                              TextWidget(
                                  text: 'Qty: 1',
                                  size: 12.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        child: SvgPicture.asset(
                          'constants/icons/ic_delete.svg',
                          alignment: Alignment(0, .9),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 140.0,
                decoration: BoxDecoration(
                    color: Color(0xFFFFDBED),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 5, 5, 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextWidget(
                                  text: 'Dell Latitude E5470',
                                  size: 13.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left),
                              SizedBox(
                                height: 10,
                              ),
                              TextWidget(
                                  text: 'SAR 799.00',
                                  size: 12.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left),
                              SizedBox(
                                height: 10,
                              ),
                              TextWidget(
                                  text: 'Qty: 1',
                                  size: 12.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        child: SvgPicture.asset(
                          'constants/icons/ic_delete.svg',
                          alignment: Alignment(0, .9),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 140.0,
                decoration: BoxDecoration(
                    color: Color(0xFFFFDBED),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 5, 5, 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextWidget(
                                  text: 'Dell Latitude E5470',
                                  size: 13.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left),
                              SizedBox(
                                height: 10,
                              ),
                              TextWidget(
                                  text: 'SAR 799.00',
                                  size: 12.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left),
                              SizedBox(
                                height: 10,
                              ),
                              TextWidget(
                                  text: 'Qty: 1',
                                  size: 12.0,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.left)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        child: SvgPicture.asset(
                          'constants/icons/ic_delete.svg',
                          alignment: Alignment(0, .9),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

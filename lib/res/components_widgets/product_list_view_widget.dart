import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';
import 'package:lap_mart/utils/status.dart';
import 'package:lap_mart/view_model/controller/home_admin/home_admin_controller.dart';

import '../../view_model/controller/sign_up/sign_up_controller.dart';
import '../common_widgets/common_card_info_widget.dart';

class ProductListViewWidget extends StatelessWidget {
  // final homeAdminController = Get.put(HomeAdminController());
  const ProductListViewWidget({
    super.key,
    required this.controller,
  });
  final HomeAdminController controller;

  @override
  Widget build(BuildContext context) {
    // return Text(homeAdminController.status.toString());
    // return homeAdminController.status == Status.COMPLETED
    //     ? Text(homeAdminController.status.toString())
    //     : CircularProgressIndicator();
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 210),
      itemCount: controller.productList.length,
      itemBuilder: (context, index) {
        // return Text('Goo');
        /*return Card(
        child: Column(
          children: [
            Image.asset('assets/images/laptops.png',
                height: 100, width: 100),
            const SizedBox(height: 8),
            const Text('Apple Macbook 12', style: TextStyle(fontSize: 16)),
            const Text('SAR 500', style: TextStyle(fontSize: 14)),
          ],
        ),
      ),*/
        return CommonCardInfoWidget(
          image: 'assets/images/laptop.png',
          name: controller.productList[index]['name'],
          price: controller.productList[index]['price'],
          // name: 'Laptop',
          // price: '300',
          dotMenuImage: 'assets/icons/ic_back.svg',
        );
      },
    );
  }
}

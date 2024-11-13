import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lap_mart/res/common_widgets/common_text_widget.dart';
import 'package:lap_mart/utils/app_utils.dart';
import 'package:lap_mart/view_model/controller/home_admin/home_admin_controller.dart';
import 'package:lap_mart/view_model/controller/products/products_controller.dart';
import '../../res/common_widgets/common_row_header_widget.dart';
import '../../res/components_widgets/icons_row_widget.dart';
import '../../res/components_widgets/product_list_view_widget.dart';
import '../nav_bar/nav_bar.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  final productsController = Get.put(ProductsController());

  @override
  void dispose() {
    // TODO: implement dispose
    productsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const NavBar(),
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CommonRowHeaderWidget(
              svgIconLeft: 'assets/icons/ic_sign_out.svg',
              svgIconMiddle: 'assets/icons/ic_laptop.svg',
              svgIconRight: 'assets/icons/ic_sign_out.svg',
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: CommonTextWidget(
                text: 'Brands',
                size: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const IconsRowWidget(),
            const SizedBox(height: 10),
            Obx(
              () {
                if (productsController.isLoading.value) {
                  return const Expanded(
                      child: ProductListViewWidget(
                    dotMenuImage: 'assets/icons/ic_back.svg',
                  ));
                } else {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 200.0, bottom: 200.0),
                      child: SizedBox(
                          width: 100,
                          height: 100,
                          child: CircularProgressIndicator(
                            color: Colors.blueAccent,
                          )),
                    ),
                  );
                }
              },
            )
            // const Expanded(child: ProductListViewWidget()),
          ],
        ),
      )),
    );
  }
}

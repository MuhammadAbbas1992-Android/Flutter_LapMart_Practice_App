import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../res/common_widgets/custom_button_widget.dart';
import '../../res/common_widgets/custom_header_widget.dart';
import '../../res/components_widgets/icons_row_widget.dart';
import '../../res/components_widgets/product_list_view_widget.dart';
import '../../res/routs/routs_name.dart';
import '../../utils/app_utils.dart';
import '../../view_model/controller/home_admin/home_admin_controller.dart';
import '../../view_model/services/firebase/firebase_services.dart';
import '../nav_bar/nav_bar.dart';

class HomeAdminView extends StatefulWidget {
  const HomeAdminView({super.key});

  @override
  State<HomeAdminView> createState() => _HomeAdminViewState();
}

class _HomeAdminViewState extends State<HomeAdminView> {
  final homeAdminController = Get.put(HomeAdminController());

  @override
  void dispose() {
    // TODO: implement dispose
    homeAdminController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () => AppUtils.logout(),
            child: SvgPicture.asset(
              'assets/icons/ic_sign_out.svg',
              color: Colors.black,
              width: 10,
              height: 10,
            ),
          ),
        ),
        actions: [
          const Spacer(
            flex: 6,
          ),
          const CustomHeaderWidget(),
          const Spacer(
            flex: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CommonButtonWidget(
              text: 'Add New',
              width: 70,
              height: 25,
              size: 14,
              onTap: () => Get.toNamed(RoutsName.addProductView),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            IconsRowWidget(
              homeAdminController: homeAdminController,
            ),
            const SizedBox(height: 10),
            Obx(
              () {
                if (homeAdminController.isLoading.value) {
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
                } else if (homeAdminController.categoryList.isEmpty) {
                  return const Expanded(
                      child: Center(child: Text('No product available')));
                } else {
                  return Expanded(
                      child: ProductListViewWidget(
                    dotMenuImage: 'assets/icons/ic_dot_menu.svg',
                    homeAdminController: homeAdminController,
                  ));
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

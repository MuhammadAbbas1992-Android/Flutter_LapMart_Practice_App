import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lap_mart/utils/status.dart';
import '../../res/common_widgets/common_row_header_widget.dart';
import '../../res/components_widgets/icons_row_widget.dart';
import '../../res/components_widgets/product_list_view_widget.dart';
import '../../res/routs/routs_name.dart';
import '../../utils/app_utils.dart';
import '../../view_model/controller/home_admin/home_admin_controller.dart';
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
    /*SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top], // Only the status bar remains visible
    );*/
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
            CommonRowHeaderWidget(
              svgIconLeft: 'assets/icons/ic_sign_out.svg',
              svgIconMiddle: 'assets/icons/ic_laptop.svg',
              onTapLeft: () => AppUtils.logout(),
              onTapRight: () => Get.offNamed(RoutsName.addProductView),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const IconsRowWidget(),
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
                } else {
                  return const Expanded(
                      child: ProductListViewWidget(
                    dotMenuImage: 'assets/icons/ic_back.svg',
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

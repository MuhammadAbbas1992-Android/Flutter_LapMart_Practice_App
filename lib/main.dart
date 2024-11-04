import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lap_mart/res/routs/routs_app.dart';
import 'package:lap_mart/test_screen.dart';
import 'package:lap_mart/view/about_us/about_us_view.dart';
import 'package:lap_mart/view/add_product/add_product_view.dart';
import 'package:lap_mart/view/cart/cart_view.dart';
import 'package:lap_mart/view/contact_us/contact_us_view.dart';
import 'package:lap_mart/view/home/home_view.dart';
import 'package:lap_mart/view/home_admin/home_admin_view.dart';
import 'package:lap_mart/view/login/login_view.dart';
import 'package:lap_mart/view/product_detail/product_detail_view.dart';
import 'package:lap_mart/view/products/products_view.dart';
import 'package:lap_mart/view/sign_up/sign_up_view.dart';
import 'package:lap_mart/view/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const SplashView(),
      // home: LoginView(),
      // home: SignUpView(),
      // home: HomeView(),
      // home: ContactUsView(),
      // home: AboutUsView(),
      // home: CartView(),
      // home: ProductDetailView()
      // home: ProductsView(),
      // home: AddProductView(),
      // home: HomeAdminView(),
      initialRoute: AppRouts.initial,
      getPages: AppRouts.appRouts,
      // home: TestScreen(),
    );
  }
}

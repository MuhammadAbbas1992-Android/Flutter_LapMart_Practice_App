import 'package:get/get.dart';
import 'package:lap_mart/model/product_model.dart';
import 'package:lap_mart/res/routs/routs_name.dart';
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

class AppRouts {
  AppRouts._();
  static String initial = RoutsName.splashView;
  static final appRouts = [
    GetPage(
        name: RoutsName.splashView,
        page: () => const SplashView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: RoutsName.loginView,
        page: () => const LoginView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: RoutsName.signUpView,
        page: () => const SignUpView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: RoutsName.homeView,
        page: () => const HomeView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: RoutsName.productsView,
        page: () => const ProductsView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: RoutsName.productsDetailView,
        page: () => const ProductDetailView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: RoutsName.cartView,
        page: () => const CartView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: RoutsName.aboutUsView,
        page: () => const AboutUsView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: RoutsName.contactUsView,
        page: () => const ContactUsView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: RoutsName.homeAdminView,
        page: () => const HomeAdminView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: RoutsName.addProductView,
        page: () => AddProductView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade),
  ];
}

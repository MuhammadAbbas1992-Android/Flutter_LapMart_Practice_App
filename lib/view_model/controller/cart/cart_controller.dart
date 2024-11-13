import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lap_mart/model/cart_model.dart';
import 'package:lap_mart/view_model/services/sharedpreferences/shared_preference_services.dart';

import '../../../res/common_widgets/common_cart_widget.dart';

class CartController extends GetxController {
  RxDouble grandTotalPayment = 0.0.obs;
  RxList<CartModel>? cartList = SharedPreferenceServices.cartList.obs;

  void sumGrandTotalPayment() {
    for (var cart in cartList!) {
      double amount = cart.price * cart.quantity;
      grandTotalPayment.value = grandTotalPayment.value + amount;
    }
  }

  void clearCartList() {
    grandTotalPayment.value = 0.0;
    cartList?.clear();
    SharedPreferenceServices.cartList.clear();
  }

  void removeCart(int cartIndex) {
    CartModel? cartModel = cartList?[cartIndex];
    double amount = cartModel!.price * cartModel.quantity;
    grandTotalPayment.value = grandTotalPayment.value - amount;
    cartList?.removeAt(cartIndex);
  }
}

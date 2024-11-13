import 'package:get/get.dart';
import 'package:lap_mart/model/cart_model.dart';
import 'package:lap_mart/model/product_model.dart';
import 'package:lap_mart/utils/app_utils.dart';
import 'package:lap_mart/view_model/services/firebase/firebase_services.dart';
import 'package:lap_mart/view_model/services/sharedpreferences/shared_preference_services.dart';

class ProductDetailController extends GetxController {
  RxInt counter = 0.obs;
  late ProductModel productModel;

  ProductDetailController() {
    productModel = FirebaseServices.productList[AppUtils.productIndex];
  }

  void incrementCounter() {
    ++counter.value;
    print('ABC Counter ${counter.value}');
  }

  void decrementCounter() {
    if (counter.value > 0) {
      --counter.value;
    }
    print('ABC Counter ${counter.value}');
  }

  void addCart() {
    if (counter.value > 0) {
      CartModel cartModel = CartModel(
          name: productModel.name,
          price: double.parse(productModel.price),
          quantity: counter.value);

      SharedPreferenceServices.cartList.add(cartModel);
      AppUtils.productIndex = -1;
      AppUtils.cartView();
    } else {
      AppUtils.mySnackBar(
          title: 'Alert', message: 'Quantity must be at least 1');
    }
  }
}

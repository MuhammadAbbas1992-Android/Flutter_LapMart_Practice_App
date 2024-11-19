import 'package:get/get.dart';
import 'package:lap_mart/model/cart_model.dart';
import 'package:lap_mart/model/product_model.dart';
import 'package:lap_mart/utils/app_utils.dart';
import 'package:lap_mart/view_model/services/firebase/firebase_services.dart';

import '../../../res/routs/routs_name.dart';

class ProductDetailController extends GetxController {
  RxInt counter = 0.obs;
  late ProductModel productModel;

  ProductDetailController() {
    productModel = AppUtils.list[AppUtils.productIndex];
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

  Future<void> uploadCart() async {
    if (counter.value > 0) {
      CartModel cartModel = CartModel(
          id: '',
          url: productModel.imageUrl,
          name: productModel.name,
          price: productModel.price,
          quantity: counter.value.toString());

      if (await FirebaseServices.addCart(cartModel)) {
        print('ABC 11');
        AppUtils.mySnackBar(
            title: 'Success', message: 'Cart added successfully');
        counter.value = 0;
        // Get.offNamed(RoutsName.productsView);
        Get.offNamed(RoutsName.productsView);
      } else {
        print('ABC 12');
        AppUtils.mySnackBar(title: 'Error', message: 'Failed to add cart');
      }
    } else {
      AppUtils.mySnackBar(
          title: 'Alert', message: 'Quantity must be at least 1');
    }
  }
}

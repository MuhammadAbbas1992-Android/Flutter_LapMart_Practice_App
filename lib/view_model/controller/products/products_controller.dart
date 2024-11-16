import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

import '../../../model/product_model.dart';
import '../../../utils/app_utils.dart';
import '../../services/firebase/firebase_services.dart';

class ProductsController extends GetxController {
  // Observable RxBool for loading status
  RxBool isLoading = true.obs;
  // RxList<ProductModel> categoryList = <ProductModel>[].obs;

  ProductsController() {
    loadProducts();
  }
  void loadProducts() async {
    print('1 Product Controller isLoading ${isLoading.value}');
    AppUtils.productIndex = -1;
    await FirebaseServices.getProducts().then(
      (value) {
        print('2 Product Controller isLoading ${isLoading.value}');
        isLoading.value = !isLoading.value;
        print('3 Product Controller isLoading ${isLoading.value}');
      },
    ).onError(
      (error, stackTrace) {
        AppUtils.mySnackBar(
            title: 'Error', message: 'Failed to load products data');
      },
    );
  }
}

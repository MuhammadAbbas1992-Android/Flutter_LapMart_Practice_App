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

  RxList<ProductModel> categoryList = <ProductModel>[].obs;

  ProductsController() {
    loadProducts();
  }

  void loadProducts() async {
    AppUtils.productIndex = -1;
    await FirebaseServices.getProducts().then(
      (value) {
        AppUtils.list = <ProductModel>[];
        categoryList.value = FirebaseServices.productList;
        AppUtils.list.addAll(categoryList);

        isLoading.value = !isLoading.value;
      },
    ).onError(
      (error, stackTrace) {
        AppUtils.mySnackBar(
            title: 'Error', message: 'Failed to load products data');
        isLoading.value = !isLoading.value;
      },
    );
  }

  void getCategory(String category) {
    isLoading.value = !isLoading.value;

    AppUtils.list = <ProductModel>[];
    categoryList.value = <ProductModel>[];

    for (var product in FirebaseServices.productList) {
      if (product.category == category) {
        categoryList.add(product);
        AppUtils.list.addAll(categoryList);
      }
    }
    isLoading.value = !isLoading.value;
  }
}

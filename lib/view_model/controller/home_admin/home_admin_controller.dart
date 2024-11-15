import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:lap_mart/model/product_model.dart';
import 'package:lap_mart/utils/app_utils.dart';
import 'package:lap_mart/utils/status.dart';
import 'package:lap_mart/view_model/services/firebase/firebase_services.dart';

class HomeAdminController extends GetxController {
  // Observable RxBool for loading status
  RxBool isLoading = true.obs;
  // static RxString category = 'Hp'.obs;
  // static RxList<ProductModel> categoryList = <ProductModel>[].obs;

  HomeAdminController() {
    print('HomeAdminController Call started');
    loadProductsData();
    print('HomeAdminController Call finished');
  }

  Future<void> loadProductsData() async {
    await FirebaseServices.getProducts().then(
      (value) {
        isLoading.value = !isLoading.value;
      },
    ).onError(
      (error, stackTrace) {
        AppUtils.mySnackBar(
            title: 'Error', message: 'Failed to load products data');
      },
    );
  }

  /*static void loadProductCategory(String type) {
    category.value = type;
    categoryList.clear();
    for (ProductModel productModel in FirebaseServices.productList) {
      if (productModel.category == type) {
        categoryList.add(productModel);
      }
    }
    print('Category List Updated ${categoryList.length}');
  }*/
}

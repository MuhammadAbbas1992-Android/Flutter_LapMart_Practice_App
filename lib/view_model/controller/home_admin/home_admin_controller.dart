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

  HomeAdminController() {
    loadProductsData();
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
}

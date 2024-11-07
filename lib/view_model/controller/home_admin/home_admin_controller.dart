import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:lap_mart/utils/status.dart';

class HomeAdminController extends GetxController {
  late FirebaseAuth _auth;
  late FirebaseFirestore _fireStore;
  late FirebaseDatabase _rootRef;
  late RxList<Map<String, dynamic>> productList;
  late Status status = Status.LOADING;
  // Observable RxBool for loading status
  RxBool isLoading = false.obs;

  // Function to toggle the loading status
  void toggleLoading() {
    isLoading.value = !isLoading.value;
  }

  HomeAdminController() {
    _auth = FirebaseAuth.instance;
    _fireStore = FirebaseFirestore.instance;
    _rootRef = FirebaseDatabase.instance;
    productList = <Map<String, dynamic>>[].obs;
    getProducts().then(
      (value) {
        status = Status.COMPLETED;
        isLoading.value = !isLoading.value;
      },
    );
  }

// This code is helps to fetch messages already stored in firebase collection
  Future<void> getProducts() async {
    final response = await _fireStore.collection('Products').get();
    for (var product in response.docs) {
      print('Response Size ${response.size}');
      print('Name: ${product['name']}');
      print('Price: ${product['price']}');
      print('Description: ${product['description']}');
      print('Product $product');
      print('product Data ${product.data()}');
      productList.add(product.data());
    }
  }
}

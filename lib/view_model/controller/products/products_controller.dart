import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

import '../../../model/product_model.dart';

class ProductsController extends GetxController {
  late FirebaseAuth _auth;
  late FirebaseFirestore _fireStore;
  late FirebaseDatabase _rootRef;
  late RxList<ProductModel> productList;
  // Observable RxBool for loading status
  RxBool isLoading = false.obs;

  ProductsController() {
    _auth = FirebaseAuth.instance;
    _fireStore = FirebaseFirestore.instance;
    _rootRef = FirebaseDatabase.instance;
    // productList = <Map<String, dynamic>>[].obs;
    productList = <ProductModel>[].obs;
    getProducts().then(
      (value) {
        isLoading.value = !isLoading.value;
      },
    );
  }

  // Function to toggle the loading status
  void toggleLoading() {
    isLoading.value = !isLoading.value;
  }

  // This code is helps to fetch messages already stored in firebase collection
  Future<void> getProducts() async {
    await _fireStore.collection('Products').get().then(
      (response) {
        for (var product in response.docs) {
          print('ABC yes Response Id ${product.id}');
          print('Response Size ${response.size}');
          print('category: ${product['category']}');
          print('Name: ${product['name']}');
          print('Price: ${product['price']}');
          print('Description: ${product['description']}');
          print('Product $product');
          print('product Data ${product.data()}');
          // ProductModel.fromJson(product as Map<String, dynamic>);
          // ProductModel productModel = ProductModel(
          //     category: product['category'],
          //     name: product['name'],
          //     price: product['price'],
          //     description: product['description']);
          ProductModel productModel = ProductModel.fromJson(product);
          print('ABC Check it ${product.id}\n${productModel.id}');
          productList.add(productModel);
        }
      },
    );
  }
}

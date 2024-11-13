import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../model/product_model.dart';

class FirebaseServices {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final FirebaseDatabase _rootRef = FirebaseDatabase.instance;
  static List<ProductModel> productList = <ProductModel>[];

  // This code is helps to fetch messages already stored in firebase collection
  static Future<List<ProductModel>?> getProducts() async {
    productList.clear();
    final FirebaseFirestore fireStore = FirebaseFirestore.instance;
    await fireStore.collection('Products').get().then(
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

          ProductModel productModel = ProductModel.fromJson(product);
          print('ABC Check it ${product.id}\n${productModel.id}');
          productList.add(productModel);
        }
        return productList;
      },
    ).onError(
      (error, stackTrace) => productList,
    );
  }
}

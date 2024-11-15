import 'package:firebase_database/firebase_database.dart';
import 'package:lap_mart/utils/app_utils.dart';

import '../../../model/product_model.dart';

class FirebaseServices {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final FirebaseDatabase _rootRef = FirebaseDatabase.instance;
// static List<ProductModel> categoryList = <ProductModel>[];
  static List<ProductModel> productList = <ProductModel>[];

  // Retrieve all Cart items from Firebase
  static Future<List<ProductModel>?> getProducts() async {
    productList.clear();
    final DatabaseReference databaseReference = FirebaseDatabase.instance.ref();
    try {
      await databaseReference.child('Products').get().then(
        (value) {
          if (value.exists) {
            for (var childSnapshot in value.children) {
              final productModel = ProductModel.fromJson(
                  Map<String, dynamic>.from(childSnapshot.value as Map));
              productList.add(productModel);
              /* if (productModel.category == 'Hp') {
                categoryList.add(productModel);
              }*/
            }
          }
        },
      );
    } catch (e) {
      AppUtils.mySnackBar(
          title: 'Error', message: 'Failed to retrieve product items');
    }
    return productList;
  }

  static Future<bool> updateProduct(ProductModel productModel) async {
    final DatabaseReference databaseReference = FirebaseDatabase.instance.ref();

    try {
      await databaseReference
          .child('Products')
          .child(productModel.id)
          .update(productModel.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> addProduct(ProductModel productModel) async {
    final DatabaseReference databaseReference = FirebaseDatabase.instance.ref();

    try {
      final productRef = databaseReference.child('Products').push();
      productModel.id = productRef.key!; // Assign generated ID to cart object
      await productRef.set(productModel.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }
}

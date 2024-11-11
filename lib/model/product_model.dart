import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  late String? id;
  // late  String url;
  late String category;
  late String name;
  late String price;
  late String description;

  ProductModel({
    this.id,
    // required this.url,
    required this.category,
    required this.name,
    required this.price,
    required this.description,
  });

  // Convert a Product object to JSON format (Map)
  Map<String, dynamic> toJson() {
    return {
      // 'url': url,
      'category': category,
      'name': name,
      'price': price,
      'description': description,
    };
  }

  // Convert JSON format (Map) to a Product object
  factory ProductModel.fromJson(
      QueryDocumentSnapshot<Map<String, dynamic>> json) {
    return ProductModel(
      id: json.id,
      // url: json['url'] as String,
      category: json['category'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      description: json['description'] as String,
    );
  }
}

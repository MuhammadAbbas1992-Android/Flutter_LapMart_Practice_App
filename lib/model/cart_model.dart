class CartModel {
  // final String url;
  final String name;
  final double price;
  final int quantity;

  CartModel({
    // required this.url,
    required this.name,
    required this.price,
    required this.quantity,
  });

  // Factory constructor to create a CartModel from a Map (e.g., from Firebase)
  factory CartModel.fromMap(Map<String, dynamic> data) {
    return CartModel(
      // url: data['url'] ?? '',
      name: data['name'] ?? '',
      price: (data['price'] ?? 0).toDouble(),
      quantity: (data['quantity'] ?? 0).toInt(),
    );
  }

  // Method to convert CartModel instance to a Map (e.g., for Firebase)
  Map<String, dynamic> toMap() {
    return {
      // 'url': url,
      'name': name,
      'price': price,
      'quantity': quantity,
    };
  }
}

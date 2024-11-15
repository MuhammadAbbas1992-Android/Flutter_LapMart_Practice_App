import 'package:lap_mart/model/cart_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceServices {
  static List<CartModel> cartList = [];

  // Store the username in SharedPreferences
  static Future<void> saveUsername(String user) async {
    bool status = false;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('user', user);
  }

  // Retrieve the username from SharedPreferences
  static Future<String?> loadUsername() async {
    final prefs = await SharedPreferences.getInstance();
    String? userName = prefs.getString('user');
    print('Shared User Name $userName');
    return userName;
  }

  // Clear the username from SharedPreferences
  static Future<void> clearUsername() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('user');
  }
}

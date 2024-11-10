import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lap_mart/utils/app_utils.dart';

class AddProductController extends GetxController {
  final nameController = TextEditingController(text: 'Laptop').obs;
  final priceController = TextEditingController(text: '200').obs;
  final descriptionController =
      TextEditingController(text: 'Good product for use').obs;
  // late FirebaseAuth _auth;
  late FirebaseFirestore _fireStore;
  // late FirebaseDatabase _rootRef;
  late String imageUrl;

  RxString selectedOption = 'Choose Brand'.obs;
  final List<String> options =
      ['Choose Brand', 'Apple', 'Dell', 'Hp', 'Lenovo'].obs;

  RxString imagePath = ''.obs;

  bool showSpinner = false;

  AddProductController() {
    // _auth = FirebaseAuth.instance;
    _fireStore = FirebaseFirestore.instance;
    // _rootRef = FirebaseDatabase.instance;
    // getCurrentUser();
  }
  Future getImage() async {
    AppUtils.mySnackBar(title: 'Alert', message: 'Welcome to Add New Device');
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    // final image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      //Get String of Image File from Gallery or Camera
      imagePath.value = image.path.toString();
      //Get File from Gallery or Camera
      // imagePath = File(image.path);
    }
    AppUtils.mySnackBar(title: "Image Path", message: imagePath.value);
  }

  Future<void> uploadProduct() async {
    if (imagePath.value.isEmpty) return;

    try {
      // Create a reference to Firebase Storage
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('uploads/${DateTime.now().millisecondsSinceEpoch}.jpg');

      // Upload the image file
      await storageRef.putFile(File(imagePath.value));

      // Get the download URL
      imageUrl = await storageRef.getDownloadURL();
      addProduct();
    } catch (e) {
      AppUtils.mySnackBar(
          title: 'Error uploading image', message: e.toString());
    }
  }

  // If Document name is system defined
  void addProduct() {
    _fireStore.collection('Products').add({
      'url': imageUrl,
      'category': selectedOption.value,
      'name': nameController.value.text,
      'price': priceController.value.text,
      'description': descriptionController.value.text
    }).then(
      (value) {
        AppUtils.mySnackBar(title: 'Message', message: value.id);

        //Response value having multiple information in it
        /*print('ABC Response Id ${value.id}');
        print('ABC Response Path ${value.path}');
        print('ABC Response Firebase ${value.firestore}');
        print('ABC Response Parent ${value.parent}');
        print('ABC Response HashCode ${value.hashCode}');
        print('ABC Response RuntimeType ${value.runtimeType}');
        print('ABC Response Obs ${value.obs}');
        print('ABC Response IsBlank ${value.isBlank}');
        print('ABC Response Reactive ${value.reactive}');*/

        AppUtils.homeAdminView();
      },
    ).onError(
      (error, stackTrace) {
        AppUtils.mySnackBar(title: 'Message', message: error.toString());
      },
    );

// If Document name is User defined
    /*void addProduct() {
    dynamic data = _fireStore.collection('Items').doc('User').set({
      'name': nameController.value.text,
      'price': priceController.value.text,
      'description': descriptionController.value.text
    });*/
    // To get Current User Login Id
    /* Future<void> getCurrentUser() async {
    print('ABC Add ${priceController.value.text}');
    print('ABC Add ${nameController.value.text}');
    late User loggedInUser;
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print("1 Account Holder ${loggedInUser.email}");
      }
      print("2 Account Holder ${loggedInUser.email}");
    } catch (e) {
      print("3 Account Holder ${loggedInUser.email}");
      print(e);
    }
  }*/
  }
}

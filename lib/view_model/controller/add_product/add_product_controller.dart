import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lap_mart/model/product_model.dart';
import 'package:lap_mart/utils/app_utils.dart';
import 'package:lap_mart/view_model/services/firebase/firebase_services.dart';

import '../../../res/routs/routs_name.dart';

class AddProductController extends GetxController {
  final nameController = TextEditingController().obs;
  final priceController = TextEditingController().obs;
  final descriptionController = TextEditingController().obs;

  // late int productIndex = -1.obs;

  RxString selectedOption = 'Choose Brand'.obs;
  final List<String> options =
      ['Choose Brand', 'Hp', 'Apple', 'Dell', 'Lenovo'].obs;

  RxString imageUrl = ''.obs;
  RxString imagePath = ''.obs;

  bool showSpinner = false;

  AddProductController() {
    loadProductScreen();
    print('Called AddProductController Constructor');
  }

  void loadProductScreen() {
    print('productIndex ${AppUtils.productIndex}');
    if (AppUtils.productIndex >= 0) {
      ProductModel productModel =
          FirebaseServices.productList[AppUtils.productIndex];
      imageUrl.value = productModel.imageUrl;
      selectedOption.value = productModel.category;
      nameController.value.text = productModel.name;
      priceController.value.text = productModel.price;
      descriptionController.value.text = productModel.description;
    }
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

  Future<void> addProduct() async {
    AppUtils.mySnackBar(title: "Yes ", message: 'its working');
    if (imagePath.value.isEmpty && imageUrl.value.isEmpty) {
      AppUtils.mySnackBar(
          title: 'Alert', message: 'Please add image of product');
      print('ABC 1');
      return;
    } else {
      uploadImage();
    }
  }

  Future<void> uploadImage() async {
    print('ABC 2');
    //Each time it will work as u choose a new image from gallary
    if (imagePath.value.isNotEmpty) {
      print('ABC 3');
      try {
        print('ABC 4');
        // Create a reference to Firebase Storage
        final storageRef = FirebaseStorage.instance
            .ref()
            .child('Images/${DateTime.now().millisecondsSinceEpoch}.jpg');

        // Upload the image file
        await storageRef.putFile(File(imagePath.value));

        // Get the download URL
        imageUrl.value = await storageRef.getDownloadURL();
        uploadProduct();
      } catch (e) {
        print('ABC 5');
        AppUtils.mySnackBar(
            title: 'Error uploading image', message: e.toString());
      }
    } else {
      uploadProduct();
    }
  }

  Future<void> uploadProduct() async {
    print('ABC 6');
    if (AppUtils.productIndex >= 0) {
      print('ABC 7');
      //Update existing product
      ProductModel productModel =
          FirebaseServices.productList[AppUtils.productIndex];
      productModel.imageUrl = imageUrl.value;
      productModel.category = selectedOption.value;
      productModel.name = nameController.value.text;
      productModel.price = priceController.value.text;
      productModel.description = descriptionController.value.text;

      if (await FirebaseServices.updateProduct(productModel)) {
        AppUtils.mySnackBar(
            title: 'Success', message: 'Product details updated successfully');
        print('ABC 8');
        clearData();
        Get.offNamed(RoutsName.homeAdminView);
      } else {
        print('ABC 9');
        AppUtils.mySnackBar(
            title: 'Error', message: 'Product details failed to updated');
      }
    } else {
      print('ABC 10');
      //Add new product
      ProductModel productModel = ProductModel(
          imageUrl: imageUrl.value,
          id: '',
          category: selectedOption.value,
          name: nameController.value.text,
          price: priceController.value.text,
          description: descriptionController.value.text);

      if (await FirebaseServices.addProduct(productModel)) {
        print('ABC 11');
        AppUtils.mySnackBar(
            title: 'Success', message: 'Product details added successfully');
        clearData();
        Get.offNamed(RoutsName.homeAdminView);
      } else {
        print('ABC 12');
        AppUtils.mySnackBar(
            title: 'Error', message: 'Product details failed to add');
      }
    }
  }

  void clearData() {
    AppUtils.productIndex = -1;
    imagePath.value = '';
    imageUrl.value = '';
    selectedOption.value = 'Choose Brand';
    nameController.value.text = '';
    priceController.value.text = '';
    descriptionController.value.text = '';
  }
}

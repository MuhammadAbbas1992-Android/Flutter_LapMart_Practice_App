import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lap_mart/constants/app_colors.dart';
import 'package:lap_mart/model/product_model.dart';
import 'package:lap_mart/res/common_widgets/custom_text_form_field_widget.dart';
import 'package:lap_mart/res/common_widgets/custom_text_widget.dart';
import 'package:lap_mart/res/routs/routs_name.dart';
import 'package:lap_mart/utils/app_utils.dart';
import 'package:lap_mart/view_model/controller/add_product/add_product_controller.dart';

import '../../res/common_widgets/custom_button_widget.dart';
import '../../res/common_widgets/custom_header_widget.dart';
import '../../res/components_widgets/dropdown_widget.dart';
import '../../res/common_widgets/custom_text_field_widget.dart';
import '../nav_bar/nav_bar.dart';

class AddProductView extends StatefulWidget {
  const AddProductView({super.key});

  @override
  State<AddProductView> createState() => _AddProductViewState();
}

class _AddProductViewState extends State<AddProductView> {
  final addProductController = Get.put(AddProductController());
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    addProductController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () => Get.back(),
            child: SvgPicture.asset(
              'assets/icons/ic_back.svg',
              color: Colors.black,
              width: 10,
              height: 10,
            ),
          ),
        ),
        actions: const [
          Spacer(),
          CustomHeaderWidget(),
          Spacer(),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const CommonTextWidget(
                        text: 'Add New Device',
                        size: 20.0,
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Obx(
                        () => Container(
                          height: 143,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.tinGrey,
                            border: Border.all(
                                color: AppColors.lightGrey, width: 1),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: addProductController.imageUrl.isEmpty &&
                                  addProductController.imagePath.isEmpty
                              ? Center(
                                  child: CommonTextWidget(
                                    text: '+ Add Image',
                                    textAlign: TextAlign.center,
                                    onTap: () =>
                                        addProductController.getImage(),
                                  ),
                                )
                              : addProductController.imagePath.isNotEmpty
                                  ? InkWell(
                                      onTap: () =>
                                          addProductController.getImage(),
                                      child: Image.file(
                                        File(addProductController
                                            .imagePath.value),
                                        fit: BoxFit.fill,
                                      ),
                                    )
                                  : InkWell(
                                      onTap: () =>
                                          addProductController.getImage(),
                                      child: Image.network(
                                        addProductController.imageUrl.value,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DropdownWidget(
                        controller: addProductController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CommonTextFieldWidget(
                        hint: 'Product Name',
                        controller: addProductController.nameController.value,
                        validator: (value) =>
                            AppUtils.validateFieldData(value, 'Product Name'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CommonTextFieldWidget(
                        hint: 'Price',
                        controller: addProductController.priceController.value,
                        validator: (value) =>
                            AppUtils.validateFieldData(value, 'Price'),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CommonTextFieldWidget(
                        hint: 'Description',
                        height: 115,
                        controller:
                            addProductController.descriptionController.value,
                        validator: (value) =>
                            AppUtils.validateFieldData(value, 'Description'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CommonButtonWidget(
                        text: 'ADD',
                        onTap: () => _formKey.currentState!.validate()
                            ? addProductController.addProduct()
                            : null,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}

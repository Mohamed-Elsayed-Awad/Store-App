import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store/Models/product_model.dart';
import 'package:store/Services/update_product.dart';
import 'package:store/widgets/custom_button.dart';
import 'package:store/widgets/custom_text_feild.dart';

class UpdateProductScreen extends StatefulWidget {
  UpdateProductScreen({super.key});
  static String id = 'Update Product';

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  String? productName, description, image;
  bool isLoading = false;
  num? price;

  @override
  Widget build(BuildContext context) {
    ProductModel productModel =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Update Product',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFeild(
                onChange: (data) {
                  productName = data;
                },
                hint: 'Product Name',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFeild(
                onChange: (data) {
                  description = data;
                },
                hint: 'Description',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFeild(
                inputType: TextInputType.number,
                onChange: (data) {
                  price = int.parse(data);
                },
                hint: 'Price',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFeild(
                onChange: (data) {
                  image = data;
                },
                hint: 'Image',
              ),
              SizedBox(
                height: 24,
              ),
              CustomButton(
                button: 'Update',
                color: Colors.white,
                onTap: () async {
                  setState(() {
                    isLoading = true;
                  });
                  try {
                    await UpdateProductService().updateProduct(
                        title: productName == null
                            ? productModel.title
                            : productName!,
                        id: productModel.id,
                        price: price == null ? productModel.price : price!,
                        description: description == null
                            ? productModel.description
                            : description!,
                        imgUrl: image == null ? productModel.img : image!,
                        category: productModel.category);
                  } on DioException catch (e) {
                    log('There is an error $e');
                  }
                  setState(() {
                    isLoading = false;
                  });
                  log('success');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

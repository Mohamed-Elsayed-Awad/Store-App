import 'package:flutter/material.dart';
import 'package:store/Models/product_model.dart';
import 'package:store/Services/get_all_products.dart';
import 'package:store/widgets/product_list.dart';

class ProductBuilder extends StatelessWidget {
  ProductBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
        future: allProductsService().getAllProduct(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ProductList(
              products: snapshot.data!,
              length: snapshot.data!.length,
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}

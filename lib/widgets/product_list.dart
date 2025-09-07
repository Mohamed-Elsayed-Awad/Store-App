import 'package:flutter/material.dart';
import 'package:store/Models/product_model.dart';
import 'package:store/widgets/product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key, required this.length, required this.products});
  final int length;
  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: length,
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        clipBehavior: Clip.none,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.3,
            crossAxisSpacing: 30,
            mainAxisSpacing: 100),
        itemBuilder: (context, index) {
          return productCard(
            productModel: products[index],
          );
        });
  }
}

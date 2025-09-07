import 'package:flutter/material.dart';
import 'package:store/Models/product_model.dart';
import 'package:store/Screens/update_product_screen.dart';

class productCard extends StatelessWidget {
  const productCard({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductScreen.id,
            arguments: productModel);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
              width: 200,
              height: 170,
              child: Card(
                color: Colors.white,
                elevation: 11,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            maxLines: 1,
                            productModel.title.substring(0, 15),
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text('\$${productModel.price.toString()}',
                              style: TextStyle(color: Colors.grey))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, right: 8),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              right: 45,
              bottom: 90,
              child: Image.network(
                productModel.img,
                height: 110,
                width: 100,
              ))
        ],
      ),
    );
  }
}

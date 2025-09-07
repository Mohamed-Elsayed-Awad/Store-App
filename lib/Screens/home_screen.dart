import 'package:flutter/material.dart';
import 'package:store/widgets/product_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Flash Store',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
            )
          ]),
      body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8, top: 70),
          child: ProductBuilder()),
    );
  }
}

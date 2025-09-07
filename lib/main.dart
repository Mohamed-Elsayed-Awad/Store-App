import 'package:flutter/material.dart';
import 'package:store/Screens/home_screen.dart';
import 'package:store/Screens/update_product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {UpdateProductScreen.id: (context) => UpdateProductScreen()},
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}

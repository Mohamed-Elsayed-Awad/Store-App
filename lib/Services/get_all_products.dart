import 'package:dio/dio.dart';
import 'package:store/Helper/api.dart';
import 'package:store/Models/product_model.dart';

class allProductsService {
  Future<List<ProductModel>> getAllProduct() async {
    Response response =
        await Api().Get(url: 'https://fakestoreapi.com/products');
    List<dynamic> jsonData = response.data;

    List<ProductModel> productList = [];

    for (var element in jsonData) {
      productList.add(
        ProductModel.fromJson(
          element,
        ),
      );
    }
    return productList;
  }
}

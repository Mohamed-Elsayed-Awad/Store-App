import 'package:dio/dio.dart';
import 'package:store/Helper/api.dart';
import 'package:store/Models/product_model.dart';

class CategoriesServices {
  Future<List<ProductModel>> getAllProduct(
      {required String categoryName}) async {
    Response response = await Api()
        .Get(url: 'https://fakestoreapi.com/products/category/$categoryName');
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

import 'package:dio/dio.dart';
import 'package:store/Helper/api.dart';

class GetAllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    Response response =
        await Api().Get(url: 'https://fakestoreapi.com/products/categories');

    List<dynamic> dataList = response.data;
    return dataList;
  }
}

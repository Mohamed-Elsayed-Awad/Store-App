import 'package:store/Helper/api.dart';
import 'package:store/Models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct(
      {required String title,
      required int id,
      required num price,
      required String description,
      required String imgUrl,
      required String category}) async {
    Map<String, dynamic> productData =
        await Api().Put(url: 'https://fakestoreapi.com/products/$id', body: {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'image': imgUrl,
      'category': category
    });
    return ProductModel.fromJson(productData);
  }
}

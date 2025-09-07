import 'package:store/Helper/api.dart';
import 'package:store/Models/product_model.dart';

class AddProductService {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String description,
      required String imgUrl,
      required String category}) async {
    Map<String, dynamic> productData =
        await Api().Post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': imgUrl,
      'category': category
    });

    return ProductModel.fromJson(productData);
  }
}

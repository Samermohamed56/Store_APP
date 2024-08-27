import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/productModel.dart';

class UpdateProduct {
  Future<Productmodel> updateproduct(
      {required dynamic title,
      required dynamic price,
      required dynamic desc,
      required dynamic image,
      required dynamic id,
      required dynamic category}) async {
    Map<dynamic, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category,
      'id': id
    });
    return Productmodel.fromjson(data);
  }
}

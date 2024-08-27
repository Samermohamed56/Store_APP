import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/productModel.dart';

class Addproductservice {
  Future<Productmodel> updateproduct(
      {required dynamic title,
      required dynamic price,
      required dynamic desc,
      required dynamic image,
      required int id,
      required dynamic category}) async {
    Map<dynamic, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
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

import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/productModel.dart';

class Categoriesservice {
  Future<List<Productmodel>> categories(
      {required dynamic category_name}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$category_name');

    List<Productmodel> productList = [];
    for (var i = 0; i < data.length; i++) {
      productList.add(Productmodel.fromjson(data[i]));
    }
    return productList;
  }
}

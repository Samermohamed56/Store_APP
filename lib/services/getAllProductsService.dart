import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/productModel.dart';

class Getallproductsservice {
  Future<List<Productmodel>> getallProducts() async {
   List<dynamic> data = 
        await Api().get(url: 'https://fakestoreapi.com/products');

   
    List<Productmodel> productList = [];
    for (var i = 0; i < data.length; i++) {
      productList.add(Productmodel.fromjson(data[i]));
    }
    return productList;
  }
}

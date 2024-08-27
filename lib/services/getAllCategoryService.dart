import 'package:storeapp/helper/api.dart';

class Getallcategoryservice {
  Future<List<dynamic>> Getallcategory() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}

import 'package:storeapp/Models/ratingModel.dart';

class Productmodel {
  final dynamic id;
  final dynamic title;
  final dynamic price;
  final dynamic description;
  final dynamic image;
  final dynamic category;
  final Ratingmodel rating;
  Productmodel(
      {required this.id,
      required this.category,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});
  factory Productmodel.fromjson(jsonData) {
    return Productmodel(
      rating: Ratingmodel.fromjson(jsonData['rating']),
      id: jsonData['id'],
      title: jsonData['title'],
      category: jsonData['category'],
      price: jsonData['price'],
      description: jsonData['description'],
      image: jsonData['image'],
    );
  }
}

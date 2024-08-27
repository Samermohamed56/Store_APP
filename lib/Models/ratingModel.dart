class Ratingmodel {
  final dynamic rate;
  final dynamic count;

  Ratingmodel({required this.rate, required this.count});
  factory Ratingmodel.fromjson(json) {
    return Ratingmodel(rate: json['rate'], count: json['count']);
  }
}

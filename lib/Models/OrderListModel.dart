

import 'package:storeapp/Models/loginInformationModel.dart';

class OrderModel {
  final loginInformationModel loginInformation;
  final String name;
  final String address;
  final String mobileNumber;
  final String orderDetails; // Add order details
  final String orderlocation;
  bool isDelivered;
  final int orderID;
  final int driverID;
  final String price;
  OrderModel({
    required this.loginInformation,
    required this.orderID,
    required this.driverID,
    required this.name,
    required this.address,
    required this.mobileNumber,
    required this.orderDetails,
    required this.orderlocation,
    required this.isDelivered,
    required this.price,
  });
  factory OrderModel.fromjson(jsondata) {
    return OrderModel(
      loginInformation: jsondata['driver'],
        driverID: jsondata['driverId'],
        orderID: jsondata['orderID'],
        name: jsondata['name'],
        address: jsondata['address'],
        mobileNumber: jsondata['mobileNumber'],
        orderDetails: jsondata['orderDetails'],
        orderlocation: jsondata['orderlocation'],
        isDelivered: jsondata['isDelivered'],
        price: jsondata['price']);
  }
}

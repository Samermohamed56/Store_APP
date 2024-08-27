import 'package:flutter/material.dart';
import 'package:storeapp/screens/UpdateProductPage.dart';
import 'package:storeapp/screens/homePage.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Homepage.id,
      routes: {
        Homepage.id: (context) => const Homepage(),
        Updateproductpage.id: (context) => const Updateproductpage()
      },
    );
  }
}

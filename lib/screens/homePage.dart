import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/models/productModel.dart';
import 'package:storeapp/services/getAllProductsService.dart';
import 'package:storeapp/widgets/itemCard.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  static dynamic id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: FutureBuilder<List<Productmodel>>(
            future: Getallproductsservice().getallProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Productmodel> products = snapshot.data!;
                return GridView.builder(
                    clipBehavior: Clip.none,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.3,
                            mainAxisSpacing: 100),
                    itemBuilder: (context, index) {
                      return Itemcard(
                        productmodel: products[index],
                      );
                    });
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartPlus,
              ))
        ],
        title: const Text('new trend'),
      ),
    );
  }
}

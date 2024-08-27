import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/models/productModel.dart';
import 'package:storeapp/screens/UpdateProductPage.dart';

class Itemcard extends StatelessWidget {
  const Itemcard({super.key, required this.productmodel});
  final Productmodel productmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Updateproductpage.id,
            arguments: productmodel);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 40,
                    color: Color.fromARGB(90, 158, 158, 158),
                    spreadRadius: 0,
                    offset: Offset(10, 10))
              ],
            ),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productmodel.title.subdynamic(0, 6),
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${productmodel.price.todynamic()}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        const Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 66,
            bottom: 80,
            child: Image.network(
              productmodel.image,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}

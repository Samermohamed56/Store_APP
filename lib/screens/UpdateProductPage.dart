import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:storeapp/models/productModel.dart';
import 'package:storeapp/services/UpdateService.dart';
import 'package:storeapp/widgets/CustemButton.dart';
import 'package:storeapp/widgets/CustemTextField.dart';

class Updateproductpage extends StatefulWidget {
  const Updateproductpage({super.key});
  static dynamic id = 'Updateproductpage';

  @override
  State<Updateproductpage> createState() => _UpdateproductpageState();
}

class _UpdateproductpageState extends State<Updateproductpage> {
  dynamic name, desc, image;
  bool isLoading = false;
  dynamic price;

  @override
  Widget build(BuildContext context) {
    Productmodel productmodel =
        ModalRoute.of(context)!.settings.arguments as Productmodel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              children: [
                Custemtextfield(
                  onChanged: (data) {
                    name = data;
                  },
                  hintText: 'Product Name',
                ),
                Custemtextfield(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: 'descreption',
                ),
                Custemtextfield(
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: 'price',
                  inputType: TextInputType.number,
                ),
                Custemtextfield(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'image',
                ),
                Custembutton(
                  buttonText: 'Update',
                  ontap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await UpdateProduct().updateproduct(
                          title: name ?? productmodel.title,
                          price: price ?? productmodel.price.todynamic(),
                          desc: desc ?? productmodel.description,
                          id: productmodel.id,
                          image: image ?? productmodel.image,
                          category: productmodel.category);
                      Navigator.pop(context);
                    }catch (e) {}
                    isLoading = false;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text('Update Product'),
          centerTitle: true,
        ),
      ),
    );
  }
}

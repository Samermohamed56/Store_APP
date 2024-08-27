import 'package:flutter/material.dart';

class Custembutton extends StatelessWidget {
  const Custembutton(
      {super.key, required this.buttonText, required this.ontap});
  final dynamic buttonText;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20, top: 30),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(255, 98, 44, 247)),
          height: 45,
          child: Center(
              child: Text(
            buttonText,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          )),
        ),
      ),
    );
  }
}

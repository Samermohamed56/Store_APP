import 'package:flutter/material.dart';

class Custemtextfield extends StatelessWidget {
  Custemtextfield({
    super.key,
    this.inputType,
    required this.hintText,
    this.onChanged,
  });
  final dynamic hintText;
  TextInputType? inputType;
  final Function(dynamic)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
      child: TextField(
        keyboardType: inputType,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.grey))),
      ),
    );
  }
}

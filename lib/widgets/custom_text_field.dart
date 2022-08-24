/**
 * Created by : Ayush Kumar
 * Created on : 02-06-2022
 */
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? label;
  final TextInputType? keyboardType;

  const CustomTextField(
      {Key? key,
      required this.controller,
      this.hintText,
      this.label,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: 1,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: label,
        hintStyle: TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
        labelStyle: Theme.of(context).textTheme.headline6,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black26,
            width: 1,
          ),
        ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(32),
        //   borderSide: BorderSide(
        //     color: Colors.black87,
        //     width: 1,
        //   ),
        // ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black26,
          ),
        ),
      ),
    );
  }
}

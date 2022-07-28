/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({
    Key? key,
  }) : super(key: key);
  final List dropdownItemList = const [
    {'label': 'Family', 'value': 'family'}, // label is required and unique
    {'label': 'Son', 'value': 'Son'},
    {'label': 'Daughter', 'value': 'Daughter'},
    {'label': 'Brother', 'value': 'Brother'},
    {'label': 'Sister', 'value': 'Sister'},
    {'label': 'Friend', 'value': 'Friend'},
    {'label': 'Other', 'value': 'Other'},
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Image.asset(
          "assets/xls.png",
          width: 20,
          height: 20,
        ),
        SizedBox(width: 6),
        Image.asset(
          "assets/pdf.png",
          width: 20,
          height: 20,
        ),
      ],
    );
  }
}

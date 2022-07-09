/**
 * Created by : Ayush Kumar
 * Created on : 06-06-2022
 */
import 'package:flutter/material.dart';

class myDrawerHeader extends StatelessWidget {
  const myDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Family"),
        SizedBox(
          width: 8,
        ),
        Icon(Icons.menu),
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

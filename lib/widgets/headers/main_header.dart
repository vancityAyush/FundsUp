/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({
    Key? key,
  }) : super(key: key);

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

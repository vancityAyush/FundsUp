/**
 * Created by : Ayush Kumar
 * Created on : 02-06-2022
 */
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double scale;
  const LogoWidget({
    Key? key,
    this.scale = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icon.png",
            height: 30 * scale,
          ),
          SizedBox(
            width: 5 * scale,
          ),
          Image.asset(
            "assets/logo.png",
            width: 120 * scale,
            height: 30 * scale,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}

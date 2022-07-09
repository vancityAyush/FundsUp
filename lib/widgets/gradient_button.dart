/**
 * Created by : Ayush Kumar
 * Created on : 30-05-2022
 */
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  String text;
  void Function()? onPressed;
  double width;
  GradientButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.0),
        gradient: LinearGradient(
          colors: [
            Color(0xff244835),
            Color(0xff0F7546),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        height: 50.0,
        minWidth: 200.0,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }
}

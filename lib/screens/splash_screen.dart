/**
 * Created by : Ayush Kumar
 * Created on : 28-05-2022
 */
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/intro');
    });
    return Scaffold(
      body: Center(
        child: Image.asset("assets/splash.gif"),
      ),
    );
  }
}

/**
 * Created by : Ayush Kumar
 * Created on : 28-05-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/partner/client_landing_page.dart';
import 'package:fundsup/screens/tabs/landing_page.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.defaultDialog(
        title: "Welcome to FundsUp+",
        content: Text(
          "FundsUp+ is a platform for investors to invest in mutual funds and ETFs. It is a one stop solution for all your investment needs.",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        actions: [
          FlatButton(
            child: Text("Client"),
            onPressed: () {
              Get.to(
                LandingPage(),
              );
            },
          ),
          FlatButton(
            child: Text("Partner"),
            onPressed: () {
              Get.to(
                ClientLandingPage(),
              );
            },
          ),
        ],
      );
    });
    return Scaffold(
      body: Center(
        child: Image.asset("assets/splash.gif"),
      ),
    );
  }
}

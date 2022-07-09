import 'package:flutter/material.dart';
import 'package:fundsup/screens/intro_screen.dart';
import 'package:fundsup/screens/kyc_screen.dart';
import 'package:fundsup/screens/landing_page.dart';
import 'package:fundsup/screens/pan_card_screen.dart';
import 'package:fundsup/screens/phone_verify.dart';
import 'package:fundsup/screens/splash_screen.dart';
import 'package:fundsup/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Funds Up',
      theme: ThemeData(
        fontFamily: 'Graphikapp',
        primaryColor: blueColor,
        primaryColorLight: greenColor,
      ),
      home: LandingPage(),
      routes: {
        '/landing': (context) => LandingPage(),
        '/splash': (context) => Splash(),
        '/intro': (context) => IntroScreen(),
        '/phone': (context) => PhoneVerify(),
        '/pan': (context) => PanCardScreen(),
        '/kyc': (context) => KycScreen(),
      },
    );
  }
}

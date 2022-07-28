import 'package:flutter/material.dart';
import 'package:fundsup/screens/login/intro_screen.dart';
import 'package:fundsup/screens/login/kyc_screen.dart';
import 'package:fundsup/screens/login/pan_card_screen.dart';
import 'package:fundsup/screens/login/phone_verify.dart';
import 'package:fundsup/screens/login/splash_screen.dart';
import 'package:fundsup/screens/tabs/landing_page.dart';
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
        fontFamily: 'Helvitica',
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

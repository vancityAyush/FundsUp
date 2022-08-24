import 'package:flutter/material.dart';
import 'package:fundsup/screens/login/intro_screen.dart';
import 'package:fundsup/screens/login/kyc_screen.dart';
import 'package:fundsup/screens/login/pan_card_screen.dart';
import 'package:fundsup/screens/login/phone_verify.dart';
import 'package:fundsup/screens/login/splash_screen.dart';
import 'package:fundsup/screens/partner/client_landing_page.dart';
import 'package:fundsup/screens/tabs/landing_page.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      title: 'Funds Up',
      theme: ThemeData(
        fontFamily: 'Helvetica',
        primaryColor: blueColor,
        primaryColorLight: greenColor,
      ),
      home: ClientLandingPage(),
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

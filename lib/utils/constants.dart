/**
 * Created by : Ayush Kumar
 * Created on : 29-05-2022
 */
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

EdgeInsets sidePadding = const EdgeInsets.symmetric(horizontal: 40.0);
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
Color secondaryColor = const Color.fromRGBO(48, 70, 111, 1);
Color blueColor = const Color.fromRGBO(42, 69, 122, 1);
Color blueColorLight = const Color.fromRGBO(62, 93, 165, 1.0);
Color greenColor = const Color(0xff00B852);
Color greyColor = Colors.black54;
Color grey2 = Colors.white70;
DateFormat dateFormat = DateFormat("dd/MM/yyyy");

final TextStyle BigHeaderStyle = TextStyle(
  color: secondaryColor,
  fontWeight: FontWeight.w800,
  fontSize: 18,
);
final TextStyle headerStyle = TextStyle(
  color: secondaryColor,
  fontWeight: FontWeight.w600,
  fontSize: 15,
);
final TextStyle headerStyle2 = headerStyle.copyWith(
  fontWeight: FontWeight.w600,
);
final TextStyle subHeader = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 12,
);
final BorderSide borderSide = BorderSide(
  color: Colors.grey,
  width: 1,
);
final TextStyle linkStyle = TextStyle(
  color: secondaryColor,
  fontWeight: FontWeight.w500,
  fontSize: 12,
  height: 1.5,
);

final TextStyle bodyText = TextStyle(
  fontSize: 12,
);
final TextStyle bodyText2 = TextStyle(
  fontSize: 11,
);
final TextStyle bodyText3 = TextStyle(
  fontSize: 10,
);
final TextStyle bodyTextGrey = bodyText.copyWith(
  color: greyColor,
);
final TextStyle bodyTextGrey2 = bodyText2.copyWith(
  color: greyColor,
);
final TextStyle bodyTextGrey3 = bodyText3.copyWith(
  color: greyColor,
);

final TextStyle gridText = TextStyle(
  fontSize: 10,
  color: Colors.black,
);
final TextStyle gridTextBold = gridText.copyWith(fontWeight: FontWeight.w600);
final TextStyle gridTextGreen = gridTextBold.copyWith(color: Colors.green);
final TextStyle gridTextRed = gridTextBold.copyWith(color: Colors.red);
const double round = 10;

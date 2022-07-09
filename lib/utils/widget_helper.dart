/**
 * Created by : Ayush Kumar
 * Created on : 01-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';

Widget gradientArrowWidget() {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        colors: [
          Color(0xff244835),
          Color(0xff0F7546),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
    child: CircleAvatar(
      radius: 30.0,
      backgroundColor: Colors.transparent,
      child: Icon(
        Icons.arrow_forward,
        color: Colors.white,
        size: 32.0,
      ),
    ),
  );
}

Widget arrowBackWidget() {
  return CircleAvatar(
    radius: 24.0,
    backgroundColor: secondaryColor,
    child: Icon(
      Icons.arrow_back,
      color: Colors.white,
      size: 24.0,
    ),
  );
}

getPrimaryColor(BuildContext context) => Theme.of(context).primaryColor;
getPrimaryColorLight(BuildContext context) =>
    Theme.of(context).primaryColorLight;
getPrimaryColorDark(BuildContext context) => Theme.of(context).primaryColorDark;
TextStyle textTheme(
  BuildContext context,
  TextStyle base, {
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return base!.copyWith(
    color: color,
    fontWeight: fontWeight,
  );
}

Text T1(String text,
    {Color color = Colors.black, FontWeight fontWeight = FontWeight.normal}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}

Text T2(String text,
    {Color color = Colors.black, FontWeight fontWeight = FontWeight.normal}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 12,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}

Text T3(String text,
    {Color color = Colors.black, FontWeight fontWeight = FontWeight.normal}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 10,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}

Text T4(String text,
    {Color color = Colors.black, FontWeight fontWeight = FontWeight.normal}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 10,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}

Widget TextWithEdits(String title, bool isEditing) {
  return Row(
    children: [
      Text(
        title,
        style: subHeader,
      ),
      Spacer(),
      Visibility(
        visible: isEditing,
        child: Icon(
          Icons.edit,
          color: Colors.green,
        ),
      ),
      Visibility(
        visible: isEditing,
        child: Icon(
          Icons.delete,
          color: Colors.red,
        ),
      )
    ],
  );
}

PreferredSizeWidget? InvestAppBar(BuildContext context, {String? title}) {
  return AppBar(
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: Text(title ?? "Invest", style: TextStyle(color: Colors.black)),
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}

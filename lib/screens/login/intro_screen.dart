/**
 * Created by : Ayush Kumar
 * Created on : 01-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/widget_helper.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screenWidth(context),
              child: Image.asset(
                "assets/banner.png",
                fit: BoxFit.contain,
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Padding(
              padding: sidePadding,
              child: RichText(
                text: TextSpan(
                  text: "Accept",
                  style: BigHeaderStyle.copyWith(fontSize: 30),
                  children: [
                    TextSpan(
                      text: " incoming\nMultiple Source",
                      style: BigHeaderStyle.copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: sidePadding,
              child: Text(
                "Recommended features  for the  assignment\nof orders to trucks and drivers available\nnearby",
                style: subHeader.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
            Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: sidePadding,
            child: GestureDetector(
              onTap: () {},
              child: arrowBackWidget(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/phone');
              },
              child: gradientArrowWidget(),
            ),
          )
        ],
      ),
    );
  }
}

/**
 * Created by : Ayush Kumar
 * Created on : 02-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/calculator_screen.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ClientResearchPage extends StatelessWidget {
  const ClientResearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        myTile(
          context,
          title: "Marriage Planning",
          image: "marriage_planning",
        ),
        myTile(
          context,
          title: "Marriage Planning",
          image: "marriage",
        ),
        myTile(
          context,
          title: "Retirement Planning",
          image: "retirement",
        ),
        myTile(
          context,
          title: "EMI Calculator",
          image: "emi",
        ),
        myTile(
          context,
          title: "NAV Finder",
          image: "nav",
        ),
        myTile(
          context,
          title: "AUM Calculator",
          image: "aum",
        ),
        myTile(
          context,
          title: "Delayed SIP Calculator",
          image: "delayed",
        ),
        myTile(
          context,
          title: "Lumpsum Calculator",
          image: "lumpsum",
        ),
        myTile(
          context,
          title: "SIP Calculator",
          image: "sip_calc",
        ),
      ],
    );
  }

  Widget myTile(BuildContext context,
      {required String title, required String image}) {
    return InkWell(
      onTap: () {
        Get.bottomSheet(
          CalculatorScreen(),
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          width: (MediaQuery.of(context).size.width - 50) / 3,
          child: Column(
            children: [
              Image.asset(
                "assets/$image.png",
                fit: BoxFit.cover,
                height: 80,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                  color: blueColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

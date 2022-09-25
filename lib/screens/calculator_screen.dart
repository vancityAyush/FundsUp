/**
 * Created by : Ayush Kumar
 * Created on : 25-09-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Calculator",
              style: headerStyle2.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            getTextField("Monthly Investment (₹)"),
            SizedBox(
              height: 10,
            ),
            getTextField("Investment Period (years)"),
            SizedBox(
              height: 10,
            ),
            getTextField("Expected Annual Return (%)"),
            SizedBox(
              height: 10,
            ),
            getTextField("Delay from Today (Months)"),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90),
                ),
                child: Text(
                  "Calculate",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                color: blueColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget getTextField(String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 5,
        //     blurRadius: 4, // changes position of shadow
        //   ),
        // ],
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: headerStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: TextField(
              keyboardType: TextInputType.number,
              style: gridTextBold,
              decoration: InputDecoration(
                  hintText: "100",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(90),
                  ),
                  suffixIcon: Icon(Icons.refresh)),
            ),
          ),
        ],
      ),
    );
  }
}

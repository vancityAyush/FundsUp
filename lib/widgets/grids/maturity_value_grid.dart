/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/models/maturity_value.dart';
import 'package:fundsup/utils/constants.dart';

class MaturityValueGrid extends StatelessWidget {
  final MaturityValueData data;
  const MaturityValueGrid(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Maturity Value",
              style: gridText,
            ),
            Text(
              data.maturity,
              style: gridTextBold,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Interest Rate",
              style: gridText,
            ),
            Text(
              data.interest,
              style: gridTextGreen,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Invested",
              style: gridText,
            ),
            Text(
              data.invested,
              style: gridTextBold,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Maturity Date",
              style: gridText,
            ),
            Text(
              data.maturityDate,
              style: gridTextBold,
            ),
            Text(
              data.daysLeft,
              style: gridTextRed,
            ),
          ],
        )
      ],
    );
  }
}

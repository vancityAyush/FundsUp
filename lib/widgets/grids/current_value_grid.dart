/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';

import '../../models/current_value.dart';

class CurrentValueGrid extends StatelessWidget {
  final CurrentValueData data;
  const CurrentValueGrid(
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
              "Current Value" + data.date,
              style: gridText,
            ),
            Text(
              data.current,
              style: gridTextBold,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "All Time Return",
              style: gridText,
            ),
            Text(
              data.all,
              style: gridTextBold,
            ),
            Text(
              data.XIRR,
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
              "1 Day Return ",
              style: gridText,
            ),
            Text(
              data.one,
              style: gridTextBold,
            ),
            Text(
              data.nXIRR,
              style: gridTextRed,
            ),
          ],
        )
      ],
    );
  }
}

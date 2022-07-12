/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/grids/grid_card.dart';

class MonthlyInvestment extends StatelessWidget {
  const MonthlyInvestment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridCard(
      padding: 0,
      header: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Monthly Investment",
                style: headerStyle2,
              ),
              Text(
                "Funds Up+ External",
                style: gridText,
              ),
            ],
          ),
          Text(
            "19,994",
            style: headerStyle2.copyWith(
              color: greenColor,
            ),
          )
        ],
      ),
      columns: [
        [
          Text(
            "External investments",
            style: gridTextBold,
          ),
          Text(
            "SIPs  6",
            style: gridText,
          ),
          Text(
            "FundsUp Investments",
            style: gridTextBold,
          ),
          Text(
            "SIPs & STPs 0",
            style: gridText,
          ),
          Text("Schedule 0", style: gridText),
        ],
        [
          Text(
            "Monthly Total",
            style: gridTextBold,
          ),
          Text(
            "19994",
            style: gridText,
          ),
          Text(
            "In progress 0",
            style: gridText,
          ),
          Text(
            "In progress 0",
            style: gridText,
          ),
        ],
      ],
    );
  }
}

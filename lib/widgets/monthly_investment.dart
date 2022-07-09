/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/widget_helper.dart';
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
                style: headerStyle,
              ),
              Text(
                "Funds Up+ External",
                style: gridText,
              ),
            ],
          ),
          Text(
            "19,994",
            style: headerStyle2,
          )
        ],
      ),
      columns: [
        [
          T2(
            "External investments",
            fontWeight: FontWeight.w600,
          ),
          T3("SIPs  "),
          T3("6"),
          T2(
            "FundsUp Investments",
            fontWeight: FontWeight.w600,
          ),
          T3("SIPs & STPs"),
          T3("0"),
          T3("Schedule"),
          T3("0"),
        ],
        [
          T2(""),
          T3("Monthly Total"),
          T3("19994"),
          T2(""),
          T3("In progress"),
          T3("0"),
          T3("In progress"),
          T3("0"),
        ],
      ],
    );
  }
}

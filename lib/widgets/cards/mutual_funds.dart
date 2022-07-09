/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/values.dart';
import 'package:fundsup/widgets/custom_card.dart';
import 'package:fundsup/widgets/grids/current_value_grid.dart';

class MutualFunds extends StatelessWidget {
  const MutualFunds({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: grey2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(round),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 8,
        ),
        child: Column(
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(round),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/icons/bonds.png",
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Mutual Funds",
                      style: headerStyle,
                    ),
                  ],
                ),
              ),
            ),
            CustomCard(
              header: Text(
                "Axis Long Term Equity Fund (G)",
                style: subHeader,
              ),
              child: CurrentValueGrid(data),
            ),
            CustomCard(
              header: Text(
                "HDFC Short Term Debt Fund (G)",
                style: subHeader,
              ),
              child: CurrentValueGrid(data),
            ),
            CustomCard(
              header: Text(
                "Total Mutual Funds Wealth",
                style: headerStyle2,
              ),
              child: CurrentValueGrid(data),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/values.dart';
import 'package:fundsup/widgets/custom_card.dart';
import 'package:fundsup/widgets/grids/current_value_grid.dart';

class GeneralInsurance extends StatelessWidget {
  const GeneralInsurance({
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
                      "General Insurances",
                      style: headerStyle,
                    ),
                  ],
                ),
              ),
            ),
            CustomCard(
              header: Text(
                "Life Insurance Corporation of India [Policy No.]",
                maxLines: 1,
                style: subHeader,
              ),
              child: CurrentValueGrid(data),
            ),
            CustomCard(
              header: Text(
                "HDFC Life [Policy No.",
                style: subHeader,
              ),
              child: CurrentValueGrid(data),
            ),
            CustomCard(
              header: Text(
                "Total Life Insurances",
                style: headerStyle2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "No. Of LI",
                    style: gridTextBold,
                  ),
                  Text(
                    "2",
                    style: gridTextBold,
                  ),
                  Text(
                    "Yearly Premium",
                    style: gridTextBold,
                  ),
                  Text(
                    "Rs. 24,00,000",
                    style: gridTextBold,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

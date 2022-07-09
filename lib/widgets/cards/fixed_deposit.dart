/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/fixed_deposit.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/values.dart';
import 'package:fundsup/utils/widget_helper.dart';
import 'package:fundsup/widgets/custom_card.dart';
import 'package:fundsup/widgets/grids/maturity_value_grid.dart';

class FixedDeposit extends StatelessWidget {
  final bool isEditable;
  const FixedDeposit({
    Key? key,
    this.isEditable = false,
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
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FixedDepositPage(),
                  ),
                );
              },
              child: Card(
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
                        "Fixed Deposit",
                        style: headerStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CustomCard(
              header: TextWithEdits(
                "HDFC Bank Ltd. [FD No.]",
                isEditable,
              ),
              child: MaturityValueGrid(maturityValueData),
            ),
            CustomCard(
              header: TextWithEdits(
                "Axis Bank Ltd. [ FD No.]",
                isEditable,
              ),
              child: MaturityValueGrid(maturityValueData),
            ),
            CustomCard(
              header: Text(
                "Total Fixed deposits Wealth",
                style: headerStyle2,
              ),
              child: MaturityValueGrid(maturityValueData),
            ),
          ],
        ),
      ),
    );
  }
}

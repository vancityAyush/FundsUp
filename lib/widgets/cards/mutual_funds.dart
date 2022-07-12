/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/grids/current_value_grid2.dart';
import 'package:fundsup/widgets/title_grid.dart';

class MutualFunds extends StatelessWidget {
  const MutualFunds({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(round),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
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
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            TitleGridCard(
              child: DataGrid(),
              title: "Axis Long Term Equity Fund (G)",
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            TitleGridCard(
              child: DataGrid(),
              title: "HDFC Short Term Debt Fund (G)",
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
              height: 0,
            ),
            TitleGridCard(
              titleColor: blueColor,
              bottomBorder: round,
              color: Colors.grey[200],
              child: DataGrid(),
              title: "Total Mutual Funds Wealth",
            )
          ],
        ),
      ),
    );
  }
}

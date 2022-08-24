/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/tabs/fixed_deposit.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/widget_helper.dart';
import 'package:fundsup/widgets/grids/current_value_grid2.dart';
import 'package:fundsup/widgets/title_grid.dart';

class FixedDepositTab extends StatelessWidget {
  final bool isEditable;
  const FixedDepositTab({
    Key? key,
    this.isEditable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        FDCard(),
      ],
    );
  }
}

class FDCard extends StatelessWidget {
  const FDCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(round),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              goToNextPage(context, FixedDepositPage());
            },
            child: Card(
              elevation: 0,
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
          Divider(
            color: Colors.grey,
            thickness: 1,
            height: 2,
          ),
          TitleGridCard.withSbutitle(
            onTap: () {
              goToNextPage(context, FixedDepositPage());
            },
            child: DataGrid(
              data: [
                {'Maturity Value ': 'Rs.14,00,000'},
                {'Invested ': 'Rs.12,00,000'},
                {'Interest Rate ': '7.50%', 'color': Colors.green},
                {'Maturity Date ': '01/09/2023'},
              ],
            ),
            title: "HDFC Bank Ltd. [XXXX-XXXX-XXXX-XXXX]",
            subtitle: "85 days to renew",
            subtitleColor: Colors.green,
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
          TitleGridCard.withSbutitle(
            onTap: () {
              goToNextPage(context, FixedDepositPage());
            },
            child: DataGrid(
              data: [
                {'Maturity Value ': 'Rs.14,00,000'},
                {'Invested ': 'Rs.12,00,000'},
                {'Interest Rate ': '7.50%', 'color': Colors.green},
                {'Maturity Date ': '01/07/2023'},
              ],
            ),
            title: "Axis Bank Ltd. [XXXX-XXXX-XXXX-XXXX]",
            subtitle: "24 days to renew",
            subtitleColor: Colors.red,
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
            child: DataGrid(
              data: [
                {'Maturity Value ': 'Rs.28,00,000'},
                {'Invested ': 'Rs.24,00,000'},
                {'All time return ': 'Rs.4,00,000'},
                {'XIRR ': '+16.67%', 'color': Colors.green},
              ],
            ),
            title: "Total Fixed deposits Wealth",
          )
        ],
      ),
    );
  }
}

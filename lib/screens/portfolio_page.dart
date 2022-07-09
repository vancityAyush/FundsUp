/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/cards/bond_card.dart';
import 'package:fundsup/widgets/cards/fixed_deposit.dart';
import 'package:fundsup/widgets/cards/general_insurance.dart';
import 'package:fundsup/widgets/cards/life_insurance.dart';
import 'package:fundsup/widgets/cards/mutual_funds.dart';
import 'package:fundsup/widgets/custom_card.dart';
import 'package:fundsup/widgets/headers/main_header.dart';
import 'package:fundsup/widgets/pie_chart.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  double space = 15;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MainHeader(),
          BondCard(),
          //Mutual Funds
          SizedBox(
            height: space,
          ),
          //search bar
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Container(
                  height: 40,
                  child: TextField(
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      labelText: "Search",
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Chip(
                      label: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    SizedBox(
                      width: space,
                    ),
                    Chip(
                      label: Text("Mutual Funds"),
                    ),
                    SizedBox(
                      width: space,
                    ),
                    Chip(
                      label: Text("Fixed Deposits"),
                    ),
                    SizedBox(
                      width: space,
                    ),
                    Chip(
                      label: Text("Life Insurance"),
                    ),
                    SizedBox(
                      width: space,
                    ),
                    Chip(
                      label: Text("General Insurance"),
                    ),
                  ],
                ),
              )
            ],
          ),

          MutualFunds(),
          //Fixed Deposit

          SizedBox(
            height: space,
          ),
          FixedDeposit(),
          //Life Insurance

          SizedBox(
            height: space,
          ),
          LifeInsurance(),
          //General Life Insurance

          SizedBox(
            height: space,
          ),
          GeneralInsurance(),
          SizedBox(
            height: space,
          ),
          CustomCard(
            header: Text(
              "Fund Allocation",
              style: headerStyle,
            ),
            child: Container(
              height: 200,
              width: 400,
              child: PieChartSample1(),
            ),
          ),
          SizedBox(
            height: space,
          ),
        ],
      ),
    );
  }
}

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
import 'package:fundsup/widgets/cards/search_funds.dart';
import 'package:fundsup/widgets/custom_card.dart';
import 'package:fundsup/widgets/headers/main_header.dart';
import 'package:fundsup/widgets/pie_chart.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  double space = 15;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MainHeader(),
          BondCard(),
          //Mutual Funds
          //search bar
          SearchFunds(tabController: _tabController),
          //tab bar
          Container(
            width: double.infinity,
            height: 400,
            child: TabBarView(
              children: [
                //Mutual Funds
                Text("All"),
                MutualFunds(),
                //Fixed Deposits
                FixedDeposit(),
                //General Insurance
                //Life Insurance
                LifeInsurance(),
                GeneralInsurance(),
                //Pie Chart
              ],
              controller: _tabController,
            ),
          ),
          // MutualFunds(),
          // //Fixed Deposit
          //
          // SizedBox(
          //   height: space,
          // ),
          // FixedDeposit(),
          // //Life Insurance
          //
          // SizedBox(
          //   height: space,
          // ),
          // LifeInsurance(),
          // //General Life Insurance
          //
          // SizedBox(
          //   height: space,
          // ),
          // GeneralInsurance(),
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

/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/widgets/cards/bond_card.dart';
import 'package:fundsup/widgets/cards/fixed_deposit.dart';
import 'package:fundsup/widgets/cards/general_insurance.dart';
import 'package:fundsup/widgets/cards/life_insurance.dart';
import 'package:fundsup/widgets/cards/mutual_funds.dart';
import 'package:fundsup/widgets/cards/search_funds.dart';
import 'package:fundsup/widgets/graphs/graph_slider.dart';
import 'package:fundsup/widgets/headers/main_header.dart';

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
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          // MainHeader(),
          BondCard(),
          SearchFunds(tabController: _tabController),
          Expanded(
            child: TabBarView(
              physics: BouncingScrollPhysics(),
              controller: _tabController,
              children: [
                // AllTab(),
                MutualFundsTab(),
                //Fixed Deposits
                FixedDepositTab(),
                //General Insurance
                //Life Insurance
                LifeInsuranceTab(),
                GeneralInsuranceTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MainHeader(),
        BondCard(),
        //Mutual Funds
        //search bar
        SearchFunds(tabController: _tabController),
        //tab bar
        TabBarView(
          children: [
            //Mutual Funds
            // Text("All"),
            MutualFundsTab(),
            //Fixed Deposits
            FixedDepositTab(),
            //General Insurance
            //Life Insurance
            LifeInsuranceTab(),
            GeneralInsuranceTab(),
            //Pie Chart
          ],
          controller: _tabController,
        ),
        SizedBox(
          height: space,
        ),
        GraphSlider(),
        SizedBox(
          height: space,
        ),
      ],
    );
  }
}

/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/cards/bond_card.dart';
import 'package:fundsup/widgets/custom_card.dart';
import 'package:fundsup/widgets/graph_slider.dart';
import 'package:fundsup/widgets/monthly_investment.dart';
import 'package:fundsup/widgets/track_ext.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int touchedIndex = -1;
  List<List<String>> investmentRole = [
    [
      "Investment in Top Performers",
      "See best Funds on the basis of trailling returns"
    ],
    [
      "Top SIP Schemes",
      "View best funds on the basis of trailling SIP returns"
    ],
    [
      "New Fund Offers",
      "Invest in latest NFO here",
    ],
    [
      "Latest NAV",
      "View daily upadated NAV of all schemes",
    ],
    [
      "Set fund Picks",
      "Shortlist best funds as per our experites",
    ]
  ];
  List<String> funds = [
    "Top Searched",
    "Investor's Choice",
    "Top Ranked",
    "FundsUp Recommended",
    "Category-Wise",
    "Fund House Wise"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BondCard(),
          SizedBox(
            height: 5,
          ),
          GraphSlider(),
          TrackExt(),
          SizedBox(
            height: 5,
          ),
          CustomCard(
              header: Text(
                "Get Investment Ready: Your Investment account is not ready. Please add the remaining details and start investing with FundsUp instantly",
                style: bodyText2,
              ),
              elevation: 2,
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 30,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "Vinit Garg",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      Spacer(
                        flex: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Complete Registration",
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 30,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "Vinit Garg",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      Spacer(
                        flex: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Complete Registration",
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          SizedBox(
            height: 5,
          ),
          MonthlyInvestment(),
          SizedBox(
            height: 5,
          ),
          CustomCard(
            header: Column(
              children: [
                Text(
                  "Explore Funds",
                  style: headerStyle.copyWith(
                    color: blueColor,
                  ),
                  //search bar
                ),
              ],
            ),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => Text(
                "${funds[index]}",
                style: bodyText2.copyWith(
                  height: 1.2,
                ),
              ),
              itemCount: funds.length,
            ),
          ),
        ],
      ),
    );
  }
}

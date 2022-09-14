/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/widget_helper.dart';
import 'package:fundsup/widgets/custom_card.dart';
import 'package:fundsup/widgets/graphs/category_pie.dart';
import 'package:fundsup/widgets/grids/grid_card.dart';
import 'package:fundsup/widgets/title_grid.dart';
import 'package:get/get.dart';

class ClientHomePage extends StatefulWidget {
  const ClientHomePage({Key? key}) : super(key: key);

  @override
  State<ClientHomePage> createState() => _ClientHomePageState();
}

class _ClientHomePageState extends State<ClientHomePage> {
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
    "Category-Wise",
    "Fund House Wise"
  ];

  Widget textWithColor(String text, String text2, {bool isRed = true}) {
    // return RichText(
    //   text: TextSpan(
    //     text: text,
    //     style: gridTextBold,
    //     children: [
    //       TextSpan(
    //         text: text2,
    //         style: isRed ? gridTextRed : gridTextGreen,
    //       ),
    //     ],
    //   ),
    // );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          textAlign: TextAlign.left,
          style: gridTextBold,
        ),
        Text(
          text2,
          textAlign: TextAlign.right,
          style: isRed ? gridTextRed : gridTextGreen,
        ),
      ],
    );
  }

  Widget showInfo(String title, String value) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: TitleGridCard(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 2.0,
                  children: [
                    cardWithText("AUM", "₹ 5,60,00,000"),
                    cardWithText("56 SIPs", "₹ 5,62,000"),
                    cardWithText("No of Clients", "5"),
                    cardWithText("Average SIP Size", "₹ 5,62,000"),
                  ],
                ),
                title: "James Bond"),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: PieChart(
              chartData: [
                ChartData('Equity,,', 1, color: Colors.redAccent),
                ChartData('Debt', 3, color: Colors.blueAccent),
                ChartData('Pies', 2, color: Colors.greenAccent),
                ChartData('Locked-In', 4, color: Colors.orangeAccent),
                ChartData('Liquid', 4, color: Colors.purpleAccent),
                ChartData('Others', 4, color: Colors.yellowAccent),
              ],
              title: 'AUM Allocation',
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.bottomSheet(
                Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(238, 242, 246, 1.0),
                    borderRadius: BorderRadius.circular(round),
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Text(
                        "Performance for Past 6 months",
                        style: BigHeaderStyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      myTile(),
                      myTile(),
                      myTile(),
                      myTile(),
                    ],
                  ),
                ),
              );
            },
            child: GridCard(
              padding: 0,
              header: Text(
                "May 2022 Insights (Current Month Data)",
                style: headerStyle2,
              ),
              innerPadding: 1,
              columns: [
                [
                  Text(
                    "Month New Lumpsum",
                    style: gridText,
                  ),
                  Text(
                    "₹.5,60,00,000",
                    style: gridTextBold,
                  ),
                  heightSpace4,
                  Text(
                    "Month New Clients",
                    style: gridText,
                  ),
                  Text(
                    "6",
                    style: gridTextBold,
                  ),
                  heightSpace4,
                ],
                [
                  Text(
                    "Month New SIPs",
                    style: gridText,
                  ),
                  Text(
                    "₹. 5,62,000",
                    style: gridTextBold,
                  ),
                  heightSpace4,
                  Text(
                    "Month Redemption",
                    style: gridText,
                  ),
                  Text(
                    "₹. 5,62,000",
                    style: gridTextBold,
                  ),
                ],
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          GridCard(
            padding: 0,
            header: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Goal Achievement",
                  style: headerStyle2,
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Get.bottomSheet(
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(238, 242, 246, 1.0),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(round),
                              topRight: Radius.circular(round)),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Goal Planning",
                              style: headerStyle,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GridView.count(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 3,
                              childAspectRatio: 4,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              children: [
                                Container(),
                                Text(
                                  "Monthly Goal",
                                  style: gridTextBold,
                                ),
                                Text(
                                  "Monthly Increase",
                                  style: gridTextBold,
                                ),
                                Text(
                                  "New Lump Sum",
                                  style: gridTextBold,
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(round),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(round),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(round),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(round),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "New SIP",
                                  style: gridTextBold,
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(round),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(round),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(round),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(round),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "New ELSS",
                                  style: gridTextBold,
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(round),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(round),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(round),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(round),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "New SIP",
                                  style: gridTextBold,
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(round),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(round),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(round),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(round),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: EdgeInsets.all(3),
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(round),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: Text(
                                  "SAVE",
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.edit,
                    color: greenColor,
                  ),
                ),
              ],
            ),
            columns: [
              [
                Text(
                  "",
                  style: gridTextBold,
                ),
                Text(
                  "New Lumpsum",
                  style: gridText,
                ),
                Text(
                  "New SIPs",
                  style: gridTextBold,
                ),
                Text(
                  "New ELSS",
                  style: gridText,
                ),
                Text(
                  "New Clients",
                  style: gridText,
                ),
              ],
              [
                Text(
                  "May 2022",
                  style: gridTextBold,
                ),
                textWithColor(
                  "₹.25,75,000",
                  "-33.68%",
                ),
                textWithColor(
                  "₹.75,000",
                  "+3.68%",
                  isRed: false,
                ),
                textWithColor(
                  "₹.25,75,000",
                  "-33.68%",
                ),
                textWithColor(
                  "4    ",
                  "+3.69%",
                  isRed: false,
                ),
              ],
              [
                Text(
                  "YTD",
                  style: gridTextBold,
                ),
                textWithColor(
                  "₹.25,75,000",
                  "-33.68%",
                ),
                textWithColor(
                  "₹.75,000",
                  "+3.68%",
                  isRed: false,
                ),
                textWithColor(
                  "₹.25,75,000",
                  "-33.68%",
                ),
                textWithColor(
                  "4    ",
                  "+3.69%",
                  isRed: false,
                ),
              ],
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Transaction Status",
                    style: headerStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        getTransactionTile("All Orders", "5"),
                        heightSpace4,
                        getTransactionTile("Successful Transactions", "5"),
                        heightSpace4,
                        getTransactionTile("Pending Transaction", "5"),
                        heightSpace4,
                        getTransactionTile("Rejected", "5"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          GridCard(
            padding: 0,
            header: Text(
              "Upcoming Business Opportunities",
              style: headerStyle2,
            ),
            align: MainAxisAlignment.spaceAround,
            columns: [
              [
                cardWithText("External MF Clients", "32", fontSize: 12),
                cardWithText("External MF Clients", "32", fontSize: 12),
              ],
              [
                cardWithText("Upcoming  FDs", "5", fontSize: 12),
                cardWithText("Upcoming  FDs", "5", fontSize: 12),
              ]
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Client Interactions",
                    style: headerStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        getTransactionTile("Today's Birthday", "5"),
                        heightSpace4,
                        getTransactionTile("Today's Anniversary", "5"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          CustomCard(
            header: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Explore Funds",
                      style: headerStyle.copyWith(
                        color: blueColor,
                      ),
                      //search bar
                    ),
                    //search button
                    Spacer(),
                    Icon(
                      Icons.search,
                      color: greenColor,
                    ),
                  ],
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < funds.length; i++)
                  Row(
                    children: [
                      Icon(
                        Icons.person_outline,
                        color: greenColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${funds[i]}",
                        style: bodyText.copyWith(
                          height: 1.2,
                        ),
                      ),
                      Spacer(),
                      Visibility(
                        visible: i == funds.length - 1,
                        child: Text(
                          "Watchlist",
                          textAlign: TextAlign.end,
                          style: bodyText.copyWith(
                            height: 1.2,
                            color: greenColor,
                          ),
                        ),
                      )
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row getTransactionTile(String text1, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: gridTextBold,
        ),
        Text(
          text2,
          style: gridText,
        ),
      ],
    );
  }

  Widget myTile() {
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "February 2021",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VerticalDivider(
                        color: Colors.black87,
                        thickness: 2,
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          showInfo("Month New Lumpsum", "₹. 25,75,000"),
                          showInfo("Month New Clients ", "9"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          showInfo("Month New SIPs", "₹. 23,000"),
                          showInfo("Month Redemptions ", "₹. 13,00,000"),
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget cardWithText(String text, String subtitle, {double fontSize = 16.0}) {
    return Card(
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(round),
      ),
      elevation: 0,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: gridTextBold.copyWith(fontSize: fontSize),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                subtitle,
                style: gridText.copyWith(
                  height: 1.2,
                  fontSize: fontSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

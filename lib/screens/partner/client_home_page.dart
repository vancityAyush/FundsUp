/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/card_box.dart';
import 'package:fundsup/widgets/custom_card.dart';
import 'package:fundsup/widgets/graphs/category_pie.dart';
import 'package:fundsup/widgets/grids/grid_card.dart';
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
              fontWeight: FontWeight.w500,
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
          CardBox(
            size: 2.5,
            fontSize: 16,
            titleFontSize: 18,
            title: "James Bond",
            data: [
              {
                "AUM": "₹ 1,00,000",
              },
              {
                "56 SIPS": "₹ 1,00,000",
              },
              {
                "No of Clients": "56",
              },
              {
                "Average SIP Size": "₹ 1,00,000",
              },
            ],
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
                      myTile(),
                      myTile(),
                      myTile(),
                    ],
                  ),
                ),
              );
            },
            child: CardBox(
              title: "May 2022 Insights",
              data: [
                {
                  "Month New Lumpsum": "₹ 1,00,000",
                },
                {
                  "Month New SIPs": "₹ 1,00,000",
                },
                {"Month New Clients": "6"},
                {
                  "Month Redemption": "₹ 1,00,000",
                }
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
                              childAspectRatio: 3,
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
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "New Lump Sum",
                                    style: gridTextBold,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(90),
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
                                        borderRadius: BorderRadius.circular(90),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(90),
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
                                        borderRadius: BorderRadius.circular(90),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "New SIP",
                                    style: gridTextBold,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(90),
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
                                        borderRadius: BorderRadius.circular(90),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(90),
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
                                        borderRadius: BorderRadius.circular(90),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "New ELSS",
                                    style: gridTextBold,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(90),
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
                                        borderRadius: BorderRadius.circular(90),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(90),
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
                                        borderRadius: BorderRadius.circular(90),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "New SIP",
                                    style: gridTextBold,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(90),
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
                                        borderRadius: BorderRadius.circular(90),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(3),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(90),
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
                                        borderRadius: BorderRadius.circular(90),
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
                                  borderRadius: BorderRadius.circular(90),
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
                Text(
                  "₹.25,75,000",
                  style: gridText,
                ),
                Text(
                  "₹.75,000",
                  style: gridText,
                ),
                Text(
                  "₹.25,75,000",
                  style: gridText,
                ),
                Text(
                  "4",
                  style: gridText,
                ),
              ],
              [
                Text(""),
                Text(
                  "-36.5%",
                  style: gridTextRed,
                ),
                Text(
                  "+10%",
                  style: gridTextGreen,
                ),
                Text("-36.5%", style: gridTextRed),
                Text("+10%", style: gridTextGreen),
              ],
              [
                Text(
                  "YTD",
                  style: gridTextBold,
                ),
                Text(
                  "₹.25,75,000",
                  style: gridText,
                ),
                Text(
                  "₹.75,000",
                  style: gridText,
                ),
                Text(
                  "₹.25,75,000",
                  style: gridText,
                ),
                Text(
                  "4",
                  style: gridText,
                ),
              ],
              [
                Text(""),
                Text(
                  "-36.5%",
                  style: gridTextRed,
                ),
                Text(
                  "+10%",
                  style: gridTextGreen,
                ),
                Text("-36.5%", style: gridTextRed),
                Text("+10%", style: gridTextGreen),
              ],
            ],
          ),
          SizedBox(
            height: 5,
          ),
          CardBox(
            title: "Transaction Status",
            data: [
              {"All Orders": "5"},
              {"Successful Tansactions": "5"},
              {"Pending Transactions": "5"},
              {"Rejected Transactions": "5"},
            ],
          ),
          SizedBox(
            height: 5,
          ),
          CardBox(
            title: "Upcoming Business Opportunities",
            data: [
              {"External MF Clients": "32"},
              {"Upcoming FDs": "32"},
              {"External MF Clients": "32"},
              {"External MF Clients": "32"},
            ],
          ),
          SizedBox(
            height: 5,
          ),
          CardBox(
            title: "Client Interactions",
            data: [
              {"Today's Birthday": "33"},
              {"Today's Anniversary": "33"},
            ],
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
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VerticalDivider(
                        color: Colors.grey,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
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

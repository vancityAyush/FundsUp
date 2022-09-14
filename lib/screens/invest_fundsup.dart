/**
 * Created by : Ayush Kumar
 * Created on : 09-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/widget_helper.dart';

import '../widgets/custom_card.dart';

class InvestFundsUpPage extends StatelessWidget {
  const InvestFundsUpPage({Key? key}) : super(key: key);

  final List<String> titles = const [
    "Invest in Top Performers",
    "Top SIP Schemes",
    "New Funds Offers",
    "Latest NAV",
    "Set Fund Pick",
  ];

  final List<String> images = const [
    "star",
    "bars",
    "rise",
    "rs",
    "cash",
  ];
  final List<Color> colors = const [
    Colors.green,
    Colors.orange,
    Colors.blue,
    Color.fromRGBO(34, 33, 85, 1),
    Color.fromRGBO(8, 101, 168, 1),
  ];

  final List<String> descriptions = const [
    "See best funds on the basis of trailing return",
    "View best funds on the basis of trailing SIP return",
    "Invest  in latest NFO here",
    "View daily Updated NAV of all Scheme",
    "Shortlist best funds as per our expertise",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InvestAppBar(context, title: "Invest through FundsUp"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
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
                  for (int i = 0; i < titles.length; i++)
                    getTile(
                      title: titles[i],
                      image: images[i],
                      color: colors[i],
                      subtitle: descriptions[i],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      // SafeArea(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 20),
      //     child: Column(
      //       children: [
      //         SizedBox(height: 20),
      //         Text(
      //           "Explore and start investing in Mutual Funds of your choice through FundsUp",
      //           style: TextStyle(
      //             fontSize: 18,
      //             fontWeight: FontWeight.w500,
      //             color: Color(0xffA09A9A),
      //           ),
      //         ),
      //         SizedBox(height: 10),
      //         TextField(
      //           decoration: InputDecoration(
      //             hintText: "Search",
      //             prefixIcon: Icon(
      //               Icons.search,
      //               color: Theme.of(context).primaryColorLight,
      //             ),
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(20),
      //             ),
      //           ),
      //         ),
      //         SizedBox(height: 30),
      //         ListView.separated(
      //           shrinkWrap: true,
      //           physics: NeverScrollableScrollPhysics(),
      //           itemBuilder: (context, index) => getTile(
      //               title: titles[index],
      //               subtitle: descriptions[index],
      //               image: images[index],
      //               color: colors[index]),
      //           separatorBuilder: (context, index) {
      //             return Divider(
      //               color: Colors.black,
      //             );
      //           },
      //           itemCount: titles.length,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  ListTile getTile(
      {required String title,
      required String subtitle,
      required String image,
      required Color color}) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      // subtitle: Text(
      //   subtitle,
      //   style: TextStyle(
      //     fontSize: 12,
      //     fontWeight: FontWeight.w500,
      //     color: Color(0xffA09A9A),
      //   ),
      // ),
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(10),
        child: Image.asset(
          "assets/$image.png",
          height: 12,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

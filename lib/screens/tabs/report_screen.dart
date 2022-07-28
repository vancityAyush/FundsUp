/**
 * Created by : Ayush Kumar
 * Created on : 06-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/tabs/second_report_screen.dart';
import 'package:fundsup/utils/constants.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);
  final List<String> reports = const [
    "ELESS REPORT",
    "CAPITAL GAINS REPORT",
    "CURRENT HOLDINGS REPORT",
    "TRANSACTIONS REPORT",
    "TAX HARVESTING",
  ];

  final List<String> desc = const [
    "Generate the report to view your tax saving investments u/s 80C and save upto Rs. 46800 every year",
    "Generate the report for your LTCG/STCG on your investments which are sold",
    "Generate the report for valuation of your current holdings",
    "Generate the report for your transactions history",
    "Generate the report to minimize the impact of your LTCG tax and save upto Rs. 10000 every year ",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Text(
              "Analyse your portfolio with our comprehensive yet simple reporting structure. Have a clearer idea of all your holdings at a glance.",
              style: headerStyle,
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: reports.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          context: context,
                          builder: (context) => ReportScreen2(),
                        );
                        // showMaterialModalBottomSheet(
                        //   context: context,
                        //   builder: (context) => ReportScreen2(),
                        // );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              reports[index],
                              textAlign: TextAlign.center,
                              style: headerStyle2.copyWith(
                                color: greenColor,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              desc[index],
                              textAlign: TextAlign.center,
                              style: bodyText2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

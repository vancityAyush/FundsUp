/**
 * Created by : Ayush Kumar
 * Created on : 06-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/tabs/second_report_screen.dart';
import 'package:fundsup/utils/constants.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> reports = const [
    {
      "title": "ELSS REPORT",
      "options": <String>["2021-2022", "2022-2023", "2023-2024", "2024-2025"],
      "date": null
    },
    {
      "title": "CAPITAL GAINS REPORT",
      "options": <String>[
        "Type wise (Equity, Debt, Hybrid",
        "Fund wise (Axis Bluechip Fund, SBI Small Cap Fund etc.",
        "Sub-type wise (ELSS, Large Cap, Focused Fund, Sectoral etc.)",
        "AMC wise (Axis, SBI, Canara Robeco etc.)",
        "Date wise",
      ],
      "date": "specific",
    },
    {
      "title": "CURRENT HOLDINGS REPORT",
      "options": <String>[
        "Type wise (Equity, Debt, Hybrid",
        "Fund wise (Axis Bluechip Fund, SBI Small Cap Fund etc.",
        "Sub-type wise (ELSS, Large Cap, Focused Fund, Sectoral etc.)",
        "AMC wise (Axis, SBI, Canara Robeco etc.)",
        "Date wise",
      ],
      "date": "range",
    },
    {
      "title": "TRANSACTIONS REPORT",
      "options": <String>[
        "Type wise (Equity, Debt, Hybrid)",
        "Fund wise (Axis Bluechip Fund, SBI Small Cap Fund etc.",
        "Sub-type wise (ELSS, Large Cap, Focused Fund, Sectoral etc.)",
        "AMC wise (Axis, SBI, Canara Robeco etc.)",
        "Date wise",
      ],
      "date": "range",
    },
    {
      "title": "TAX HARVESTING",
      "options": <String>[
        "Type wise (Equity, Debt, Hybrid)",
        "Fund wise (Axis Bluechip Fund, SBI Small Cap Fund etc.",
        "Sub-type wise (ELSS, Large Cap, Focused Fund, Sectoral etc.)",
        "AMC wise (Axis, SBI, Canara Robeco etc.)",
        "Date wise",
      ],
      "date": "range",
    },
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
                      onTap: () async {
                        await showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          context: context,
                          builder: (context) => ReportScreen2(
                            options: reports[index]['options'],
                          ),
                        );
                        if (reports[index]['date'] == "specific") {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            context: context,
                            builder: (context) => DatePickerDialog(
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2025),
                            ),
                          );
                        }
                        if (reports[index]['date'] == "specific") {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            context: context,
                            builder: (context) => DatePickerDialog(
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2025),
                            ),
                          );
                        } else if (reports[index]['date'] == "range") {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            context: context,
                            builder: (context) => DateRangePickerDialog(
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2025),
                            ),
                          );
                        }
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
                              reports[index]['title'],
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

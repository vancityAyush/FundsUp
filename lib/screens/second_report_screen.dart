/**
 * Created by : Ayush Kumar
 * Created on : 09-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/widget_helper.dart';
import 'package:get/get.dart';

class ReportScreen2 extends StatelessWidget {
  final String title;
  ReportScreen2({Key? key, required this.title}) : super(key: key);
  final List<String> options = const [
    "Type wise (Equity, Debt, Hybrid",
    "Fund wise (Axis Bluechip Fund, SBI Small Cap Fund etc.",
    "Sub-type wise (ELSS, Large Cap, Focused Fund, Sectoral etc.)",
    "AMC wise (Axis, SBI, Canara Robeco etc.)",
    "Date wise",
  ];
  final currentInd = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InvestAppBar(context, title: title),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Spacer(),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        "Please Select the option by which you wish to analyse your report",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).primaryColorLight,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListView.builder(
                        itemBuilder: (context, index) {
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 2,
                            child: Obx(() => RadioListTile<int>(
                                  title: Text(options[index]),
                                  value: index,
                                  groupValue: currentInd.value,
                                  onChanged: (int? value) {
                                    currentInd.value = value ?? -1;
                                  },
                                )),
                          );
                        },
                        itemCount: options.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                      ),
                      SizedBox(height: 200),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

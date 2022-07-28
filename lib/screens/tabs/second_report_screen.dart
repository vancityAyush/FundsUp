/**
 * Created by : Ayush Kumar
 * Created on : 09-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:get/get.dart';

class ReportScreen2 extends StatelessWidget {
  ReportScreen2({Key? key}) : super(key: key);
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Column(
        children: [
          Text(
            "Please Select the option by which you wish to analyse your report",
            style: headerStyle,
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
                      activeColor: greenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      title: Text(
                        options[index],
                        style: bodyText,
                      ),
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
        ],
      ),
    );
  }
}

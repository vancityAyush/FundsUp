/**
 * Created by : Ayush Kumar
 * Created on : 09-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:get/get.dart';

class ReportScreen2 extends StatelessWidget {
  ReportScreen2({Key? key, required this.options}) : super(key: key);
  final List<String> options;
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
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  title: Center(
                    child: Text(
                      options[index],
                      style: bodyText,
                    ),
                  ),
                  onTap: () {
                    currentInd.value = index;
                    Navigator.pop(context);
                  },
                ),
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

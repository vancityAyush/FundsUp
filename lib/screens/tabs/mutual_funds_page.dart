/**
 * Created by : Ayush Kumar
 * Created on : 06-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/widget_helper.dart';
import 'package:fundsup/widgets/floating_buttons.dart';
import 'package:fundsup/widgets/grids/current_value_grid2.dart';

import '../../widgets/custom_card.dart';

class MutualFundsPage extends StatelessWidget {
  const MutualFundsPage({Key? key}) : super(key: key);
  final options = const [
    {
      "option1": "Folio(s)",
      "option2": "STP",
    },
    {
      "option1": "Fact Sheet",
      "option2": "Transaction",
    },
    {
      "option1": "SWP",
      "option2": "Switch",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 243, 244, 1),
      appBar: myAppBar(),
      floatingActionButton: FloatingButtons(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              CustomCard(
                header: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "James Bond",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Axis Long Term Equity Fund(G)\nFolio No: 123456789",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/axis.png",
                      width: 120,
                    ),
                  ),
                ),
                child: DataGrid(
                  data: [
                    {'Current Value ': '₹14,00,000'},
                    {'Invested ': '₹2,00,000'},
                    {'Overall Return': '₹ 7,00,000'},
                    {'1 Day Return ': '₹ - 5,000'},
                    {'': '+48.86%', 'color': Colors.green},
                    {'': '-0.73%', 'color': Colors.red},
                    {'No. of Units': "3161"},
                    {'Current NAV': "25.6531"}
                  ],
                ),
              ),
              SizedBox(height: 30),
              Flexible(
                flex: 2,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(round),
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => roundedTextButton(context,
                        options[index]['option1']!, options[index]['option2']!),
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.grey,
                      thickness: 1,
                      height: 1,
                    ),
                    itemCount: options.length,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconTextButton("Withdraw", "widthdraw"),
                    IconTextButton("One Time", "one_time"),
                    IconTextButton("SIP", "sip"),
                  ],
                ),
              ),
              SizedBox(
                height: 90,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget IconTextButton(String text, String image) {
    return MaterialButton(
      elevation: 5,
      color: Colors.grey,
      highlightColor: greenColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(90),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget roundedTextButton(BuildContext context, String text, String text2) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: greyColor,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          width: 1,
          height: 80,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              text2,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: greyColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

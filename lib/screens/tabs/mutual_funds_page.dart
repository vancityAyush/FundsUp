/**
 * Created by : Ayush Kumar
 * Created on : 06-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/widget_helper.dart';
import 'package:fundsup/widgets/floating_buttons.dart';
import 'package:fundsup/widgets/grids/current_value_grid2.dart';
import 'package:fundsup/widgets/title_grid.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomCard(
                header: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "James Bond",
                  ),
                  subtitle: RichText(
                    text: TextSpan(
                      text: "Family Wealth",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  trailing: Image.asset(
                    "assets/axis.png",
                    width: 120,
                  ),
                ),
                child: TitleGridCard(
                  child: DataGrid(
                    data: [
                      {'Current Value ': 'Rs.14,00,000'},
                      {'Invested ': 'Rs.12,00,000'},
                      {'All time return ': 'Rs. 7,00,000'},
                      {'1 Day Return ': 'Rs. - 5,000'},
                      {'': '+48.86%', 'color': Colors.green},
                      {'': '-0.73%', 'color': Colors.red},
                      {'No. of Units': "3161"},
                      {'Current NAV': "25.6531"}
                    ],
                  ),
                  title: "Axis Long Term Equity Fund(G)",
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
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

  Column IconTextButton(String text, String image) {
    return Column(
      children: [
        Image.asset(
          "assets/$image.png",
          height: 30,
        ),
        SizedBox(height: 8),
        T2(text, fontWeight: FontWeight.w600),
      ],
    );
  }

  Widget roundedTextButton(BuildContext context, String text, String text2) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
            padding: const EdgeInsets.all(8.0),
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

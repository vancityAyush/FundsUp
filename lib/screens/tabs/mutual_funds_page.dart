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

class MutualFundsPage extends StatelessWidget {
  const MutualFundsPage({Key? key}) : super(key: key);

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
              Card(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          "James Bond",
                        ),
                        subtitle: RichText(
                          text: TextSpan(
                            text: "Family Wealth",
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ),
                        trailing: Image.asset(
                          "assets/axis.png",
                          width: 120,
                        ),
                      ),
                      TitleGridCard(
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
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      roundedText(context, "Folio(s) (indicating live SIPs) "),
                      roundedText(context, "STP"),
                      roundedText(context, "Fact Sheet"),
                    ],
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      roundedText(context, "Transaction"),
                      roundedText(context, "SWP"),
                      roundedText(context, "Switch"),
                    ],
                  )
                ],
              ),
              Spacer(
                flex: 2,
              ),
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
              Spacer(),
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

  Container roundedText(BuildContext context, String text) {
    return Container(
      width: 180,
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: greyColor,
        ),
      ),
      child: Text(
        text,
        maxLines: 1,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    );
  }
}

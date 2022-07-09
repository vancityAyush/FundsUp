/**
 * Created by : Ayush Kumar
 * Created on : 06-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/widget_helper.dart';
import 'package:fundsup/widgets/drawer_header.dart';
import 'package:fundsup/widgets/grids/grid_card.dart';
import 'package:fundsup/widgets/logo_widget.dart';

class MutualFundsPage extends StatelessWidget {
  const MutualFundsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 12),
              LogoWidget(),
              SizedBox(height: 12),
              myDrawerHeader(),
              SizedBox(
                height: 15,
              ),
              GridCard(
                paddingAll: 16,
                header: ListTile(
                  contentPadding: EdgeInsets.zero,
                  isThreeLine: true,
                  title: Text(
                    "James Bond",
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: Theme.of(context).primaryColorLight,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  subtitle: RichText(
                    text: TextSpan(
                      text: "Family Wealth",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                      children: [
                        TextSpan(
                          text: "\nAxis Long Term Equity Fund(G)",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: Image.asset(
                    "assets/axis.png",
                    width: 120,
                  ),
                ),
                columns: [
                  [
                    T2("Current Value (as on 29/04/2022"),
                    T2("Rs. 14,00,000", fontWeight: FontWeight.w600),
                    T2("All time return"),
                    T2("Rs. 7,00,000", fontWeight: FontWeight.w600),
                    T2("+42.86 % XIRR",
                        color: Colors.green, fontWeight: FontWeight.w600),
                    // no of units in bold
                    T2("No. of Units"),
                    T2("3161", fontWeight: FontWeight.w600),
                  ],
                  [
                    //invested
                    T2("Invested"),
                    T2("Rs. 14,00,000", fontWeight: FontWeight.w600),
                    // one day return
                    T2("One Day Return"),
                    //Rs. -50000
                    T2("Rs. -5,000", fontWeight: FontWeight.w600),
                    //-.017% in red
                    T2("+17.86 % XIRR",
                        color: Colors.red, fontWeight: FontWeight.w600),
                    //current Nav in bold
                    T2("Current NAV"),
                    //25.6531
                    T2("25.6531", fontWeight: FontWeight.w600),
                  ]
                ],
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
        borderRadius: BorderRadius.circular(90),
        border: Border.all(
          color: Theme.of(context).primaryColorLight,
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

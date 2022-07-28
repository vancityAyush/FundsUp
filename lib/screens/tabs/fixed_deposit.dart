/**
 * Created by : Ayush Kumar
 * Created on : 06-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/widget_helper.dart';
import 'package:fundsup/widgets/cards/fixed_deposit.dart';
import 'package:fundsup/widgets/drawer_header.dart';
import 'package:fundsup/widgets/logo_widget.dart';

class FixedDepositPage extends StatelessWidget {
  const FixedDepositPage({Key? key}) : super(key: key);

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
              FixedDepositTab(
                isEditable: true,
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
        T3(text, fontWeight: FontWeight.w600),
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

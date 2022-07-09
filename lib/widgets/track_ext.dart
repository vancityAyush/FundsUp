/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/widget_helper.dart';
import 'package:fundsup/widgets/custom_card.dart';

class TrackExt extends StatelessWidget {
  const TrackExt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      header: Text(
        "Track your external investments and insurance",
        style: subHeader.copyWith(
          color: secondaryColor,
        ),
      ),
      padding: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          T2(
            "Explore the below options to reach the next level",
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 10,
          ),
          T3(
            "Now, keep track of all your investments and insurances at a single platform. Just add your holdings and leave the worries to us. We’ll show you the current valuation and remind you for all your due dates",
            color: Colors.black45,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}

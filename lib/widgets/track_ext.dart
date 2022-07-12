/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
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
        style: headerStyle,
      ),
      padding: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Explore the below options to reach the next level",
            style: gridText,
          ),
          SizedBox(
            height: 20,
          ),
          //add 4 cards button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < 4; i++)
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minWidth: 10,
                  height: 50,
                  color: Colors.grey[200],
                  elevation: 5,
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.add,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      Text(
                        "Ecas",
                      )
                    ],
                  ),
                ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Now, keep track of all your investments and insurances at a single platform. Just add your holdings and leave the worries to us. We’ll show you the current valuation and remind you for all your due dates",
            style: bodyTextGrey2,
          ),
        ],
      ),
    );
  }
}

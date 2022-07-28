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
  final List<Map<String, String>> data = const [
    {'image': 'mf_cas', 'title': 'MF CAS'},
    {'image': 'epf', 'title': 'FD'},
    {'image': 'ppf', 'title': 'LI'},
    {'image': 'nps', 'title': 'GI'},
  ];

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
            style: gridText.copyWith(color: Colors.black54),
          ),
          SizedBox(
            height: 20,
          ),
          //add 4 cards button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < data.length; i++)
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minWidth:
                      (MediaQuery.of(context).size.width - 100) / data.length,
                  color: Colors.grey[200],
                  elevation: 1,
                  onPressed: () {},
                  child: SizedBox.square(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Image.asset(
                          'assets/${data[i]['image']}.png',
                          width: 30,
                          height: 30,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          data[i]['title'] ?? "",
                          style: subHeader,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
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

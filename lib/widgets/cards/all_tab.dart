/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/widgets/cards/fixed_deposit.dart';
import 'package:fundsup/widgets/cards/general_insurance.dart';
import 'package:fundsup/widgets/cards/life_insurance.dart';
import 'package:fundsup/widgets/cards/mutual_funds.dart';
import 'package:fundsup/widgets/graphs/graph_slider.dart';

class AllTab extends StatelessWidget {
  const AllTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        MFCard(),
        FDCard(),
        LICard(),
        GICard(),
        GraphSlider(),
      ],
    );
  }
}

/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/values.dart';
import 'package:fundsup/widgets/grids/current_value_grid.dart';

import '../custom_card.dart';

class BondCard extends StatelessWidget {
  BondCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      header: Text(
        "James Bond",
        style: headerStyle.copyWith(
          fontSize: 20,
        ),
      ),
      child: CurrentValueGrid(BondData),
    );
  }
}

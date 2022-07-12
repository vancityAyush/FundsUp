/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/grids/current_value_grid2.dart';
import 'package:fundsup/widgets/title_grid.dart';

class LifeInsurance extends StatelessWidget {
  const LifeInsurance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(round),
      ),
      child: Column(
        children: [
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(round),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/icons/bonds.png",
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Life Insurances",
                    style: headerStyle,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          TitleGridCard(
            child: DataGrid(),
            title: "Life Insurance Corporation of India [Policy No.]",
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          TitleGridCard(
            child: DataGrid(),
            title: "HDFC Life [Policy No.]",
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
          TitleGridCard(
            titleColor: blueColor,
            bottomBorder: round,
            color: Colors.grey[200],
            child: DataGrid(),
            title: "Total Life Insurances",
          )
        ],
      ),
    );
  }
}

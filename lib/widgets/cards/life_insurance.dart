/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/tabs/life_insurance_page.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/grids/current_value_grid2.dart';
import 'package:fundsup/widgets/title_grid.dart';

class LifeInsuranceTab extends StatelessWidget {
  const LifeInsuranceTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        LICard(),
      ],
    );
  }
}

class LICard extends StatelessWidget {
  const LICard({
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
            height: 2,
          ),
          TitleGridCard(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LifeInsurancePage(),
                ),
              );
            },
            child: DataGrid(
              data: [
                {'Maturity Value ': '₹.14,00,000'},
                {'Premium ': '₹.12,00,000'},
                {'Policy Type ': 'MoneyBack'},
                {'Frequency ': 'M/Q/HY/Y'},
                {'Payment Due Date ': '01/07/2023'},
                {'Renewal Date': '01/10/2023'},
                {
                  'Pay In': '25 days',
                  'color': Colors.red,
                },
                {
                  'Renew In': '115 days',
                  'color': Colors.green,
                }
              ],
            ),
            title: "Life Insurance Corporation of India [Policy No.]",
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
            height: 2,
          ),
          TitleGridCard(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LifeInsurancePage(),
                ),
              );
            },
            child: DataGrid(
              data: [
                {'Maturity Value ': '₹.0'},
                {'Premium ': '₹.12,00,000'},
                {'Policy Type ': 'Term'},
                {'Frequency ': 'M/Q/HY/Y'},
                {'Payment Due Date ': '01/07/2023'},
                {'Renewal Date': '01/10/2023'},
                {'Pay In': '55 days', 'color': Colors.green},
                {'Renew In': '50 days', 'color': Colors.green}
              ],
            ),
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
            child: DataGrid(
              data: [
                {'No. of LI': '2'},
                {'Yearly Premium': '₹.24,00,000'}
              ],
            ),
            title: "Total Life Insurances",
          )
        ],
      ),
    );
  }
}

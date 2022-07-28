/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/tabs/general_insurance_page.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/grids/current_value_grid2.dart';
import 'package:fundsup/widgets/title_grid.dart';

class GeneralInsuranceTab extends StatelessWidget {
  const GeneralInsuranceTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        GICard(),
      ],
    );
  }
}

class GICard extends StatelessWidget {
  const GICard({
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
                    "General Insurances",
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
                  builder: (context) => GeneralInsurancePage(),
                ),
              );
            },
            child: DataGrid(
              data: [
                {'Policy Type Motor ': 'PB11BQ2772'},
                {'Premium ': 'Rs.12,00,000'},
                {'Sum Insured ': 'Rs.1000000'},
                {'Frequency ': 'M/Q/HY/Y'},
                {'Payment Due Date ': '01/07/2023'},
                {'Renewal Date': '01/10/2023'},
                {'': '25 days to pay', 'color': Colors.red, 'fontSize': 9.0},
                {'': '115 days to pay', 'color': Colors.green, 'fontSize': 9.0}
              ],
            ),
            title: "United India Insurance Company Limited [Policy No.]",
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
                  builder: (context) => GeneralInsurancePage(),
                ),
              );
            },
            child: DataGrid(
              data: [
                {'Policy Type Motor ': 'Health (Family/Indivdual)'},
                {'Premium ': 'Rs.12,00,000'},
                {'Sum Insured ': 'Rs.1000000'},
                {'Frequency ': 'M/Q/HY/Y'},
                {'Payment Due Date ': '01/07/2023'},
                {'Renewal Date': '01/10/2023'},
                {'': '25 days to pay', 'color': Colors.red, 'fontSize': 9.0},
                {'': '115 days to pay', 'color': Colors.green, 'fontSize': 9.0}
              ],
            ),
            title: "ICICI Lombard General Insurance [Policy No.]",
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
                {'No. of GI': '2'},
                {'Yearly Premium': 'Rs.24,00,000'}
              ],
            ),
            title: "Total Life Insurances",
          ),
        ],
      ),
    );
  }
}

/**
 * Created by : Ayush Kumar
 * Created on : 09-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/import_ecas_page.dart';
import 'package:fundsup/screens/invest_fundsup.dart';
import 'package:fundsup/utils/constants.dart';

class InvestScreen extends StatelessWidget {
  const InvestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 40),
          Text(
            "Invest in funds of your choice or import your external portfolio and start tracking your existing mutual fund investments",
            style: headerStyle,
          ),
          Icon(
            Icons.inventory_sharp,
            color: Color(0xffA09A9A),
            size: 100,
          ),
          Spacer(),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImportEcasPage()));
                },
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  leading: Image.asset(
                    "assets/import.png",
                    height: 30,
                  ),
                  title: Text(
                    "Import eCAS statement",
                    style: headerStyle.copyWith(color: greenColor),
                  ),
                  subtitle: Text(
                    "\nImport your exiting mutual fund portfolio and  manage your existing investments on Funds Up",
                    style: subHeader,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xffA09A9A),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CircleAvatar(
              backgroundColor: Color(0xffE5DADA),
              child: Text(
                "OR",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffCCB2B2),
                ),
              ),
            ),
          ),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InvestFundsUpPage()));
                },
                borderRadius: BorderRadius.circular(10),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  leading: Image.asset(
                    "assets/add.png",
                    height: 30,
                  ),
                  title: Text(
                    "Invest  through Funds Up",
                    style: headerStyle.copyWith(color: greenColor),
                  ),
                  subtitle: Text(
                    "\nExplore and start investing in Mutual Funds through Funds Up",
                    style: subHeader,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xffA09A9A),
                  ),
                ),
              ),
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}

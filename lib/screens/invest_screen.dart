/**
 * Created by : Ayush Kumar
 * Created on : 09-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/import_ecas_page.dart';
import 'package:fundsup/screens/invest_fundsup.dart';
import 'package:fundsup/utils/widget_helper.dart';

class InvestScreen extends StatelessWidget {
  const InvestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InvestAppBar(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Invest in funds of your choice or import your external portfolio and start tracking your existing mutual fund investments",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffA09A9A),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImportEcasPage()));
                },
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    leading: Image.asset(
                      "assets/import.png",
                      height: 30,
                    ),
                    title: Text(
                      "Import eCAS statement",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                    subtitle: Text(
                      "\nImport your exiting mutual fund portfolio and  manage your existing investments on Funds Up",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffA09A9A),
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xffA09A9A),
                    ),
                  ),
                ),
              ),
              CircleAvatar(
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
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InvestFundsUpPage()));
                },
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    leading: Image.asset(
                      "assets/add.png",
                      height: 30,
                    ),
                    title: Text(
                      "Invest  through Funds Up",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                    subtitle: Text(
                      "\nExplore and start investing in Mutual Funds through Funds Up",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffA09A9A),
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xffA09A9A),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}

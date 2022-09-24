/**
 * Created by : Ayush Kumar
 * Created on : 02-06-2022
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fundsup/screens/partner/client_home_page.dart';
import 'package:fundsup/screens/partner/client_list_page.dart';
import 'package:fundsup/screens/partner/client_research_page.dart';
import 'package:fundsup/screens/tabs/invest_screen.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/widget_helper.dart';
import 'package:fundsup/widgets/floating_buttons.dart';

import 'client_profile_page.dart';

class ClientLandingPage extends StatefulWidget {
  int selectedIndex;
  ClientLandingPage({this.selectedIndex = 0});

  @override
  State<ClientLandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<ClientLandingPage> {
  List<Widget> _pages = [
    ClientHomePage(),
    ClientListPage(),
    InvestScreen(),
    ClientResearchPage(),
    ClientProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 242, 246, 1.0),
      appBar: myAppBar(showIcon: widget.selectedIndex == -1),
      body: SafeArea(
        child: _pages[widget.selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.selectedIndex,
        onTap: (index) {
          setState(() {
            widget.selectedIndex = index;
          });
        },
        selectedFontSize: 10,
        selectedIconTheme: IconThemeData(
          size: 20,
        ),
        unselectedFontSize: 10,
        unselectedIconTheme: IconThemeData(
          size: 20,
        ),
        selectedItemColor: Theme.of(context).primaryColorLight,
        unselectedItemColor: secondaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Clients',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.on_device_training_outlined),
            label: 'Onboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Research',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

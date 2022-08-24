/**
 * Created by : Ayush Kumar
 * Created on : 02-06-2022
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fundsup/screens/tabs/home_page.dart';
import 'package:fundsup/screens/tabs/invest_screen.dart';
import 'package:fundsup/screens/tabs/portfolio_page.dart';
import 'package:fundsup/screens/tabs/profile_page.dart';
import 'package:fundsup/screens/tabs/report_screen.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/widget_helper.dart';
import 'package:fundsup/widgets/floating_buttons.dart';

class LandingPage extends StatefulWidget {
  int selectedIndex;
  LandingPage({this.selectedIndex = 0});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Widget> _pages = [
    HomePage(),
    PortfolioPage(),
    InvestScreen(),
    ReportScreen(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 243, 244, 1),
      appBar: myAppBar(showIcon: widget.selectedIndex == 1),
      body: SafeArea(
        child: _pages[widget.selectedIndex],
      ),
      floatingActionButton:
          widget.selectedIndex == 1 ? FloatingButtons() : null,
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
            icon: Icon(Icons.pie_chart),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on_outlined),
            label: 'Invest',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_frames_outlined),
            label: 'Report',
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

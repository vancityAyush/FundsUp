/**
 * Created by : Ayush Kumar
 * Created on : 02-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/home_page.dart';
import 'package:fundsup/screens/invest_screen.dart';
import 'package:fundsup/screens/portfolio_page.dart';
import 'package:fundsup/screens/profile_page.dart';
import 'package:fundsup/screens/report_screen.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/logo_widget.dart';

class LandingPage extends StatefulWidget {
  int selectedIndex;
  LandingPage({this.selectedIndex = 1});

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
      appBar: AppBar(
        title: LogoWidget(
          scale: 1.2,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: _pages[widget.selectedIndex],
      ),
      floatingActionButton: widget.selectedIndex == 1
          ? FloatingActionButton(
              onPressed: () {
                //TODO take to search page
              },
              child: Icon(Icons.search),
              backgroundColor: greenColor,
            )
          : Container(),
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

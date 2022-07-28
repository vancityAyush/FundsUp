/**
 * Created by : Ayush Kumar
 * Created on : 29-07-2022
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fundsup/screens/search_page.dart';
import 'package:fundsup/utils/constants.dart';

class FloatingButtons extends StatefulWidget {
  const FloatingButtons({Key? key}) : super(key: key);

  @override
  State<FloatingButtons> createState() => _FloatingButtonsState();
}

class _FloatingButtonsState extends State<FloatingButtons> {
  final List<String> _familyMembers = <String>[
    "All Family Members",
    "Son",
    "Daughter",
    "Brother",
    "Sister",
  ];
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: CupertinoColors.systemBackground.resolveFrom(context),
        ),
        padding: const EdgeInsets.only(top: 0.0),
        // The Bottom margin is provided to align the popup above the system navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  int _selectedMember = 0;
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      icon: Icons.filter_alt_outlined,
      backgroundColor: greenColor,
      children: [
        SpeedDialChild(
          child: const Icon(
            Icons.face,
            color: Colors.white,
          ),
          label: _familyMembers[_selectedMember],
          backgroundColor: greyColor,
          onTap: () {
            _showDialog(
              CupertinoPicker(
                magnification: 1.22,
                squeeze: 1.2,
                useMagnifier: true,
                itemExtent: 32,
                // This is called when selected item is changed.
                onSelectedItemChanged: (int selectedItem) {
                  setState(() {
                    _selectedMember = selectedItem;
                  });
                },
                children: List<Widget>.generate(
                  _familyMembers.length,
                  (int index) {
                    return Center(
                      child: Text(
                        _familyMembers[index],
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
        SpeedDialChild(
          child: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          label: 'Search',
          backgroundColor: greyColor,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}

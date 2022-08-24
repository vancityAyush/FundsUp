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
      builder: (BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Done",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
          ),
          Container(
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
        ],
      ),
    );
  }

  int _selectedMember = 2;
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      icon: Icons.filter_alt,
      backgroundColor: greenColor,
      spacing: 5,
      animationAngle: (3.1415926535897932) / 4,
      activeIcon: Icons.filter_alt_outlined,
      children: [
        SpeedDialChild(
          child: const Icon(
            Icons.face,
            color: Colors.white,
          ),
          labelBackgroundColor: greyColor,
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          label: _familyMembers[_selectedMember],
          backgroundColor: greyColor,
          onTap: () {
            _showDialog(
              CupertinoPicker(
                scrollController: FixedExtentScrollController(
                  initialItem: _selectedMember,
                ),
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
          backgroundColor: greyColor,
          labelBackgroundColor: greyColor,
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
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

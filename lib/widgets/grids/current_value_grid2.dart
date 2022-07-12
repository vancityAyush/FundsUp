/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';

class DataGrid extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  const DataGrid({
    Key? key,
    this.data = const [
      {'Current Value ': 'Rs.14,00,00,000'},
      {'Invested ': 'Rs.7,00,00,000'},
      {'All Time Return ': 'Rs.7,00,00,000'},
      {'One Day Return ': 'Rs.5,000'},
      {'': '+48.86% XIRR', 'color': Colors.green},
      {'': '-0.76%', 'color': Colors.red}
    ],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 5,
      childAspectRatio: 5,
      crossAxisSpacing: 5,
      children: [
        for (var i = 0; i < data.length; i++) ...getText(i),
      ],
    );
  }

  List<Widget> getText(int index) {
    return [
      Text(
        data[index].keys.first,
        style: gridText,
      ),
      Text(
        data[index].values.first,
        style: gridText.copyWith(
          color: data[index]['color'] ?? Colors.black,
        ),
      ),
      if (index % 2 == 0) Text("")
    ];
  }
}

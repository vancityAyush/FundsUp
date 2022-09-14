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
      {'Current Value': '₹ 99,99,99,999'},
      {'Invested': '₹ 7,00,00,000'},
      {'Overall Return': '₹7,00,00,000'},
      {'XIRR': '+48.86% ', 'color': Colors.green},
    ],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      childAspectRatio: 5,
      crossAxisSpacing: 12,
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
        maxLines: 1,
      ),
      Text(
        data[index].values.first,
        textAlign: TextAlign.end,
        overflow: TextOverflow.visible,
        maxLines: 1,
        style: gridText.copyWith(
          color: data[index]['color'] ?? gridText.color,
          fontSize: data[index]['fontSize'] ?? gridText.fontSize,
        ),
      ),
      // if (index % 2 == 0) Text("")
    ];
  }
}

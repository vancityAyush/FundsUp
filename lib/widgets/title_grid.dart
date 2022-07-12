/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';

class TitleGridCard extends StatelessWidget {
  final Widget child;
  final String title;
  final Color? color;
  final double padding;
  final titleColor;
  final double? bottomBorder;

  const TitleGridCard({
    Key? key,
    required this.child,
    required this.title,
    this.color,
    this.padding = 8,
    this.bottomBorder,
    this.titleColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(bottomBorder ?? 0),
          bottomRight: Radius.circular(bottomBorder ?? 0),
        ),
      ),
      padding: EdgeInsets.all(padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: subHeader.copyWith(color: titleColor),
          ),
          SizedBox(
            height: 10,
          ),
          child,
        ],
      ),
    );
  }
}

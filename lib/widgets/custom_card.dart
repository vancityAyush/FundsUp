/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Widget header;
  final double padding;
  final double? elevation;
  final BorderSide border;
  final Color? color;
  const CustomCard(
      {Key? key,
      this.elevation = 3,
      required this.child,
      required this.header,
      this.color,
      this.border = BorderSide.none,
      this.padding = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        side: border,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header,
            SizedBox(
              height: 10,
            ),
            child,
          ],
        ),
      ),
    );
  }
}

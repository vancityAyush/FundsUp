/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final List<List<Widget>> columns;
  final Widget header;
  final double paddingAll;
  final double padding;
  final double? innerPadding;
  final double elevation;
  final MainAxisAlignment align;
  GridCard({
    required this.columns,
    required this.header,
    this.paddingAll = 12,
    this.padding = 0,
    this.innerPadding,
    this.elevation = 3,
    this.align = MainAxisAlignment.spaceBetween,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(paddingAll),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header,
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Row(
                mainAxisAlignment: align,
                children: [
                  for (var items in columns)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (var item in items)
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: innerPadding ?? 4,
                            ),
                            child: item,
                          )
                      ],
                    )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}

/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';

class TitleGridCard extends StatelessWidget {
  final Widget child;
  final String title;
  final String? subtitle;
  final Color? subtitleColor;
  final Color? color;
  final double padding;
  final titleColor;
  final double? bottomBorder;
  final void Function()? onTap;

  const TitleGridCard({
    Key? key,
    required this.child,
    required this.title,
    this.subtitle = null,
    this.subtitleColor = null,
    this.color,
    this.padding = 8,
    this.bottomBorder,
    this.titleColor = Colors.black,
    this.onTap,
  }) : super(key: key);

  const TitleGridCard.withSbutitle({
    Key? key,
    required this.child,
    required this.title,
    required this.subtitle,
    required this.subtitleColor,
    this.color,
    this.padding = 8,
    this.bottomBorder,
    this.titleColor = Colors.black,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
            Row(
              children: [
                Text(
                  title,
                  style: subHeader.copyWith(
                    color: titleColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Spacer(),
                if (subtitle != null)
                  Text(
                    subtitle!,
                    style: gridText.copyWith(
                      color: subtitleColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
              ],
            ),
            // RichText(
            //   text: TextSpan(
            //     text: title,
            //     style: subHeader.copyWith(
            //       color: titleColor,
            //       fontWeight: FontWeight.normal,
            //     ),
            //     children: [
            //       if (subtitle != null)
            //         TextSpan(
            //           text: " $subtitle",
            //           style: gridText.copyWith(
            //             color: subtitleColor,
            //           ),
            //         ),
            //     ],
            //   ),
            // ),
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

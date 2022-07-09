/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/widget_helper.dart';

class RoundedHeader extends StatelessWidget {
  final String title;
  const RoundedHeader(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 14,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      child: T1(
        title,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
    //   ListTile(
    //   title: T1(
    //     title,
    //     color: Colors.white,
    //     fontWeight: FontWeight.w600,
    //   ),
    //   tileColor: Theme.of(context).primaryColorLight,
    //   shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.vertical(
    //     top: Radius.circular(10),
    //   )),
    // );
  }
}

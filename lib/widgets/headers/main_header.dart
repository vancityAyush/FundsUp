/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButton<int>(
          onChanged: (value) {},
          items: [
            DropdownMenuItem(
              child: Text("1"),
              value: 1,
            ),
            DropdownMenuItem(
              child: Text("2"),
              value: 2,
            ),
            DropdownMenuItem(
              child: Text("3"),
              value: 3,
            ),
          ],
          icon: Icon(Icons.arrow_drop_down),
          hint: Text(
            "Family",
          ),
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text("Family"),
          //     SizedBox(
          //       width: 8,
          //     ),
          //     Icon(Icons.arrow_drop_down),
          //   ],
          // ),
        ),
        Spacer(),
        Image.asset(
          "assets/xls.png",
          width: 20,
          height: 20,
        ),
        SizedBox(width: 6),
        Image.asset(
          "assets/pdf.png",
          width: 20,
          height: 20,
        ),
      ],
    );
  }
}

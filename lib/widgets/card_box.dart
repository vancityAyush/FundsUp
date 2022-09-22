/**
 * Created by : Ayush Kumar
 * Created on : 22-09-2022
 */
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CardBox extends StatelessWidget {
  final String title;
  final List<Map<String, String>> data;
  const CardBox({Key? key, required this.title, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(round),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: headerStyle2,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.4,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) => InkWell(
                borderRadius: BorderRadius.circular(round),
                onTap: () {},
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(round),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(round),
                      border: Border.all(color: Colors.grey),
                    ),
                    alignment: Alignment.center,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: data[index].keys.first + "\n",
                            style: gridTextBold,
                          ),
                          TextSpan(
                            text: data[index].values.first,
                            style: gridText,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * Created by : Ayush Kumar
 * Created on : 09-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/widget_helper.dart';

class GenerateEcasPage extends StatelessWidget {
  const GenerateEcasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InvestAppBar(context, title: "Generate eCAS"),
      // body: SingleChildScrollView(
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           customTile(
      //             context,
      //             "Your request for generation of eCAS in successfully placed",
      //           ),

      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      body: Center(
        child: Card(
          elevation: 2,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Stepper(
            physics: NeverScrollableScrollPhysics(),
            elevation: 2,
            steps: [
              Step(
                title: new Text(
                  "Your request for generation of eCAS in successfully placed",
                  style: TextStyle(
                    fontSize: 14,
                    color: greyColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                content: customTile(
                  context,
                  "Your request for generation of eCAS in successfully placed",
                ),
                isActive: true,
              ),
              Step(
                title: new Text(
                  "You will receive a mail from CAMS Mailback Server with subject  consolidate Account statement- CAMS Mailback Request, shortly",
                  style: TextStyle(
                    fontSize: 14,
                    color: greyColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                content: customTile(
                  context,
                  "You will receive a mail from CAMS Mailback Server with subject  consolidate Account statement- CAMS Mailback Request, shortly",
                ),
                isActive: true,
              ),
              Step(
                title: new Text(
                  "Forward the email to import@fundsup.in. Sit back and relax. we will upload it for you  and notify you once done.",
                  style: TextStyle(
                    fontSize: 14,
                    color: greyColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                content: customTile(
                  context,
                  "Forward the email to import@fundsup.in. Sit back and relax. we will upload it for you  and notify you once done.",
                ),
                isActive: true,
              ),
            ],
            controlsBuilder: (BuildContext context, ControlsDetails details) =>
                Container(),
          ),
        ),
      ),
    );
  }

  Widget customTile(BuildContext context, String text) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          "assets/doc.png",
          height: 100,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

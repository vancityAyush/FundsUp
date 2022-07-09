/**
 * Created by : Ayush Kumar
 * Created on : 09-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/upload_doc.dart';
import 'package:fundsup/utils/widget_helper.dart';

class GenerateEcasPage extends StatelessWidget {
  const GenerateEcasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InvestAppBar(context, title: "Generate eCAS"),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTile(
                  context,
                  "Your request for generation of eCAS in successfully placed",
                ),
                customTile(
                  context,
                  "You will receive a mail from CAMS Mailback Server with subject  consolidate Account statement- CAMS Mailback Request, shortly",
                ),
                customTile(
                  context,
                  "Forward the email to import@fundsup.in. Sit back and relax. we will upload it for you  and notify you once done.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customTile(BuildContext context, String text) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UploadDocumentPage(),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        color: Color(0xffEFECEC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Card(
              margin: EdgeInsets.only(left: 8, top: 10, bottom: 10),
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/doc.png",
                  height: 50,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

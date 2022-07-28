/**
 * Created by : Ayush Kumar
 * Created on : 09-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/generate_ecas_page.dart';
import 'package:fundsup/screens/login/upload_doc.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/widget_helper.dart';

class ImportEcasPage extends StatelessWidget {
  const ImportEcasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InvestAppBar(context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "Import your existing mutual fund portfolio and manage your existing investment on fundsUp",
                  style: headerStyle,
                ),
                SizedBox(height: 30),
                generateEcasButton(
                  context,
                  email: "Vineet.garg@yahoo.com",
                  last: "Last Imported on 02/05/2022",
                ),
                generateEcasButton(
                  context,
                  email: "Vrajnishbansal86@yahoo.com",
                  last: "Last Imported on 02/05/2022",
                ),
                generateEcasButton(
                  context,
                  email: "Vrajnishbansal86@yahoo.com",
                  last: "Last Imported on 02/05/2022",
                ),
                generateEcasButton(
                  context,
                  email: "Vrajnishbansal86@yahoo.com",
                  last: "Last Imported on 02/05/2022",
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.add,
                    ),
                    Text(
                      "Add Email",
                      style: bodyText,
                    ),
                    Spacer(),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Already have eCAS statement?",
                      style: bodyText.copyWith(color: blueColor),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UploadDocumentPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Upload",
                        style: bodyText.copyWith(
                          color: greenColor,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "FAQs",
                  style: headerStyle,
                ),
                FaqContainer(faq: "1. What is CAS?"),
                FaqContainer(faq: "2. How CAS is being generated?"),
                FaqContainer(faq: "3.What is the password for my CAS?"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container FaqContainer({
    required String faq,
    String ans =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed pulvinar viverra ut eu nam odio quis lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed pulvinar viverra ut eu nam odio quis lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed pulvinar viverra ut eu nam odio quis lobortis.",
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            faq,
            style: subHeader,
          ),
          SizedBox(height: 5),
          Text(
            ans,
            style: bodyText2,
          )
        ],
      ),
    );
  }

  Card generateEcasButton(BuildContext context,
      {required String email, required String last}) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        horizontalTitleGap: 0,
        contentPadding: EdgeInsets.only(
          left: 8,
          right: 8,
          top: 10,
          bottom: 10,
        ),
        leading: Icon(
          Icons.email,
          color: blueColor,
        ),
        title: Text(
          email,
          maxLines: 1,
          style: bodyText.copyWith(color: greenColor),
        ),
        subtitle: Text(
          last,
          style: bodyText3,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.red,
                size: 20,
              ),
              onPressed: () {},
            ),
            SizedBox(width: 5),
            //Button to generate ecas statement
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GenerateEcasPage(),
                  ),
                );
              },
              child: Text(
                "Generate",
                style: bodyText2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * Created by : Ayush Kumar
 * Created on : 09-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/generate_ecas_page.dart';
import 'package:fundsup/utils/widget_helper.dart';

class ImportEcasPage extends StatelessWidget {
  const ImportEcasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InvestAppBar(context),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "Import your existing mutual fund portfolio and manage your existing investment on fundsUp",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffA09A9A),
                  ),
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
                    Icon(Icons.add),
                    Text("Add Email"),
                    Spacer(),
                    Text("( OTP on mail id )"),
                  ],
                ),
                SizedBox(height: 20),
                T1(
                  "FAQs",
                  color: Color(0xffA1A3A2),
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
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          Text(
            ans,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff9B9B9B),
            ),
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
        ),
        title: Text(
          email,
          maxLines: 1,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).primaryColorLight,
          ),
        ),
        subtitle: Text(
          last,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Color(0xffA09A9A),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.delete,
              color: Color(0xffA09A9A),
            ),
            SizedBox(width: 5),
            //Button to generate ecas statement
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GenerateEcasPage(),
                  ),
                );
              },
              child: Text(
                "Generate e CAS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                ),
              ),
              color: Theme.of(context).primaryColorLight,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

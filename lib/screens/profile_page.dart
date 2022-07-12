/**
 * Created by : Ayush Kumar
 * Created on : 02-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 14),
      children: [
        SizedBox(
          height: 20,
        ),
        profileHeader(context),
        SizedBox(
          height: 20,
        ),
        customListTile(context, title: "Personal Information"),
        // Card(
        //   child: ExpansionTile(
        //     title: Text(
        //       "Family Member :2",
        //       style: Theme.of(context)
        //           .textTheme
        //           .headline3!
        //           .copyWith(fontWeight: FontWeight.w600),
        //     ),
        //     subtitle: Text(
        //       "Add Family Member",
        //       style: Theme.of(context)
        //           .textTheme
        //           .headline4!
        //           .copyWith(fontWeight: FontWeight.w600),
        //     ),
        //     trailing: Icon(Icons.add),
        //     iconColor: Theme.of(context).primaryColorLight,
        //   ),
        // ),
        customListTile(context, title: "Add a Family Member"),
        customListTile(context, title: "Account Information"),
        customListTile(context, title: "My Goals"),
        customListTile(context, title: "My Risk Profile"),
        customListTile(context, title: "Calculators"),
        customListTile(context, title: "My Watchlist"),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 18,
          ),
          child: Text(
            "Support",
            style: headerStyle,
          ),
        ),
        customListTile(context, title: "Notifications"),
        customListTile(context, title: "WhatsApp"),
        customListTile(context, title: "Support Tickets"),
        customListTile(context, title: "Email"),
        customListTile(context, title: "FAQs"),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 18.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Help Us Grow",
                style: headerStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Refer and Earn",
                style: linkStyle,
              ),
              Text(
                "Rate Us",
                style: linkStyle,
              ),
              Text(
                "Share your feedback",
                style: linkStyle,
              ),
              Text(
                "Follow us",
                style: linkStyle,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "About FundsUp",
                style: linkStyle,
              ),
              Text(
                "Privacy Policy",
                style: linkStyle,
              ),
            ],
          ),
        ),
        MaterialButton(
          onPressed: () => Navigator.pushNamed(context, "/splash"),
          child: Text(
            "LOGOUT",
            style: headerStyle.copyWith(fontSize: 15),
          ),
        ),
      ],
    );
  }

  Card profileHeader(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: Colors.white,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Vinit Garg".toUpperCase(),
                  style: headerStyle,
                ),
                Icon(
                  Icons.edit,
                  color: Theme.of(context).primaryColorLight,
                  size: 20,
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "+91-8050042000   |  ",
                  style: gridTextBold,
                ),
                VerticalDivider(
                  width: 2,
                  color: Theme.of(context).primaryColorLight,
                ),
                Text(
                  "Vinit.garg@yahoo.com".toLowerCase(),
                  style: gridTextBold.copyWith(color: Colors.blue),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            LinearProgressIndicator(
              color: greenColor,
              backgroundColor: Colors.grey[200],
              value: 0.4,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "You profile is 40% complete",
                  textAlign: TextAlign.start,
                  style: gridText,
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {},
              color: Theme.of(context).primaryColorLight,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "COMPLETE REGISTRATION",
                style: subHeader.copyWith(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customListTile(BuildContext context, {required String title}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      color: Colors.white,
      child: ListTile(
        leading: Icon(
          Icons.account_circle,
          color: Theme.of(context).primaryColorLight,
        ),
        title: Text(
          title,
          style: bodyText,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          size: 20,
          color: Theme.of(context).primaryColorLight,
        ),
      ),
    );
  }
}

/**
 * Created by : Ayush Kumar
 * Created on : 02-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/verify_widget.dart';

import '../widgets/gradient_button.dart';

class ConfirmDetailsScreen extends StatelessWidget {
  final String mobileNumber, email;
  const ConfirmDetailsScreen(
      {Key? key, required this.email, required this.mobileNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: sidePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(
                flex: 1,
              ),
              Text(
                "Confirm Your Details",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "To ensure that the details you entered are correct, please validate your email address and mobile number",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              VerifyWidget(
                title: "Mobile Number",
                subtitle: "OTP  has been sent to your mobile no 88XXXX5023",
                controller: TextEditingController(),
              ),
              VerifyWidget(
                title: "Email Address",
                subtitle:
                    "OTP  has been sent to your email mehXXXXXXXXX24@gmail.com",
                controller: TextEditingController(),
              ),
              Spacer(
                flex: 3,
              ),
              GradientButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/landing');
                },
                text: "Confirm",
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/**
 * Created by : Ayush Kumar
 * Created on : 28-05-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/gradient_button.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class PhoneVerify extends StatefulWidget {
  PhoneVerify({Key? key}) : super(key: key);

  @override
  State<PhoneVerify> createState() => _PhoneVerifyState();
}

class _PhoneVerifyState extends State<PhoneVerify> {
  PhoneNumber phoneNumber = PhoneNumber(isoCode: 'IN');
  bool isCodeSent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: screenWidth(context),
            height: screenHeight(context) - 100,
            padding: sidePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/phone.png",
                  alignment: Alignment.center,
                ),
                RichText(
                  text: TextSpan(
                    text: "Phone Verification",
                    style: BigHeaderStyle.copyWith(fontSize: 20),
                    children: [
                      TextSpan(
                        text: "\n\n",
                      ),
                      TextSpan(
                        text:
                            "We need to register your phone number before getting started!",
                        style: BigHeaderStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  child: isCodeSent
                      ? buildOtpTextField()
                      : buildPhoneNumberInput2(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GradientButton(
                      text:
                          isCodeSent ? "Verify Phone Number" : "Send the Code",
                      onPressed: () {
                        if (isCodeSent) {
                          //show toast
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Verified"),
                            ),
                          );
                          Navigator.pushReplacementNamed(context, '/pan');
                        } else {
                          //sendCode();
                        }
                        setState(() {
                          isCodeSent = true;
                        });
                      },
                    ),
                    Visibility(
                      visible: isCodeSent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(
                                () {
                                  isCodeSent = false;
                                },
                              );
                            },
                            child: Text(
                              "Edit Phone Number ?",
                              style: headerStyle.copyWith(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Send again",
                              style: headerStyle.copyWith(
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  OTPTextField buildOtpTextField() {
    return OTPTextField(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      length: 4,
      fieldWidth: 40,
      fieldStyle: FieldStyle.box,
      onCompleted: (String value) {
        print(value);
      },
    );
  }

  Widget buildPhoneNumberInput2() {
    return OTPTextField(
      // margin: EdgeInsets.symmetric(horizontal: 16.0),
      outlineBorderRadius: 20.0,
      style: headerStyle,
      length: 10,
      contentPadding: EdgeInsets.symmetric(),
      onCompleted: (String value) {
        print(value);
      },
    );
  }

  InternationalPhoneNumberInput buildPhoneNumberInput() {
    return InternationalPhoneNumberInput(
      hintText: "Enter your phone number",
      textStyle: headerStyle,
      onInputChanged: (value) {
        print(value);
      },
      errorMessage: "Invalid Phone Number",
      initialValue: phoneNumber,
    );
  }
}

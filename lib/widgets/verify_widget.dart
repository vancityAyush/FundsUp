/**
 * Created by : Ayush Kumar
 * Created on : 02-06-2022
 */
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fundsup/widgets/custom_text_field.dart';

class VerifyWidget extends StatelessWidget {
  final String title, subtitle;
  final TextEditingController controller;
  final void Function()? onEdit;
  final TextInputType? keyboardType;
  final void Function()? onResend;
  const VerifyWidget(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.controller,
      this.keyboardType,
      this.onEdit,
      this.onResend})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: onEdit,
                icon: Icon(
                  Icons.edit_outlined,
                  color: Theme.of(context).primaryColorLight,
                ),
              )
            ],
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            controller: controller,
            keyboardType: keyboardType,
            hintText: "Enter your $title OTP",
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              text: "Didn't receive OTP?",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: " Resend OTP",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 14,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = onResend,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

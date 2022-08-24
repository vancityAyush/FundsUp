/**
 * Created by : Ayush Kumar
 * Created on : 02-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/screens/confirm_details.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/custom_text_field.dart';
import 'package:fundsup/widgets/gradient_button.dart';

class KycScreen extends StatelessWidget {
  KycScreen({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController IdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: sidePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(
                flex: 2,
              ),
              Text(
                "Complete Your KYC\n in 5 Mins!",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text:
                      "First- time investors need to complete a one time KYC process to start investing.",
                  style: Theme.of(context).textTheme.headline6,
                  children: [
                    TextSpan(
                      text: "Learn More",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.blue,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "To begin, please enter your details in the form below.",
                maxLines: 1,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextField(
                controller: IdController,
                hintText: "CNJPM4038A",
                label: "ID",
              ),
              SizedBox(
                height: 24,
              ),
              CustomTextField(
                controller: nameController,
                label: "Name",
                keyboardType: TextInputType.name,
              ),
              SizedBox(
                height: 24,
              ),
              CustomTextField(
                controller: emailController,
                label: "Email",
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 24,
              ),
              CustomTextField(
                controller: phoneController,
                label: "Mobile Number",
                keyboardType: TextInputType.phone,
              ),
              Spacer(
                flex: 6,
              ),
              GradientButton(
                text: "Verify Contact Details",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmDetailsScreen(
                        email: emailController.text,
                        mobileNumber: phoneController.text,
                      ),
                    ),
                  );
                },
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

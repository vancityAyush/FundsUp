/**
 * Created by : Ayush Kumar
 * Created on : 01-06-2022
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/widget_helper.dart';
import 'package:fundsup/widgets/step_indicator.dart';

class PanCardScreen extends StatefulWidget {
  PanCardScreen({Key? key}) : super(key: key);
  @override
  State<PanCardScreen> createState() => _PanCardScreenState();
}

class _PanCardScreenState extends State<PanCardScreen> {
  int currentStep = 1;
  String? panNumber;
  DateTime? dob;
  final _panFormKey = GlobalKey<FormState>();
  final _dobFormKey = GlobalKey<FormState>();
  final RegExp _panRegex = RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$');

  TextEditingController dateController = TextEditingController();
  FocusNode dateFocusNode = FocusNode();
  TextEditingController monthController = TextEditingController();
  FocusNode monthFocusNode = FocusNode();

  TextEditingController yearController = TextEditingController();
  FocusNode yearFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          switch (currentStep) {
            case 1:
              if (_panFormKey.currentState!.validate()) {
                _panFormKey.currentState!.save();
                setState(() {
                  currentStep++;
                });
              }
              break;
            case 2:
              dob = DateTime(
                  int.parse(yearController.text),
                  int.parse(monthController.text),
                  int.parse(dateController.text));
              if (dob != null) {
                Navigator.pushNamed(context, '/kyc');
              }
          }
        },
        child: gradientArrowWidget(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenWidth(context),
                child: currentStep == 1
                    ? Padding(
                        padding: const EdgeInsets.only(
                          top: 64.0,
                          left: 36,
                          right: 36,
                        ),
                        child: Image.asset(
                          "assets/pancard.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    : Image.asset(
                        "assets/dob.png",
                        fit: BoxFit.cover,
                      ),
                color: Color.fromRGBO(202, 232, 250, 0.53),
              ),
              SizedBox(height: 24.0),
              StepIndicator(
                currentStep: currentStep,
                totalSteps: 2,
                onStepTapped: (value) {
                  setState(() {
                    currentStep = value;
                  });
                },
              ),
              SizedBox(height: 24.0),
              ...buildForm(context),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildForm(BuildContext context) {
    switch (currentStep) {
      case 1:
        return buildPanForm(context);
      case 2:
        return buildDobForm(context);
      default:
        return [];
    }
  }

  List<Widget> buildPanForm(BuildContext context) {
    return [
      Text(
        "Enter you PAN to continue",
        style: BigHeaderStyle.copyWith(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
      SizedBox(height: 36.0),
      Padding(
        padding: sidePadding,
        child: Form(
          key: _panFormKey,
          child: TextFormField(
            onSaved: (value) {
              // if (!_panRegex.hasMatch(value!)) {
              //   throw Exception("Invalid PAN");
              // }
              panNumber = value;
            },
            validator: (value) {
              print("OK");
              if (value!.isEmpty) {
                return 'Please enter your PAN';
              } else if (!_panRegex.hasMatch(value)) {
                return 'Please enter correct PAN';
              }
              return null;
            },
            inputFormatters: [
              LengthLimitingTextInputFormatter(10),
              FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z0-9]')),
            ],
            maxLines: 1,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "ABCDE1234C",
              hintStyle: headerStyle,
              border: UnderlineInputBorder(),
              errorStyle: headerStyle.copyWith(color: Colors.red),
            ),
            style: TextStyle(
                fontSize: 26.0, fontWeight: FontWeight.w500, letterSpacing: 5),
          ),
        ),
      ),
    ];
  }

  List<Widget> buildDobForm(BuildContext context) {
    return [
      Text(
        "Entered PAN : $panNumber",
        style: headerStyle,
      ),
      SizedBox(height: 10.0),
      Text(
        "Please Enter Your Date of Birth:",
        style: headerStyle,
      ),
      SizedBox(height: 20.0),
      Padding(
        padding: sidePadding,
        child: Form(
          key: _dobFormKey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  focusNode: dateFocusNode,
                  controller: dateController,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(2),
                    FilteringTextInputFormatter.allow(RegExp(r'[/0-9]')),
                  ],
                  maxLines: 1,
                  onChanged: (value) {
                    if (value.length == 2) {
                      dateFocusNode.unfocus();
                      FocusScope.of(context).requestFocus(monthFocusNode);
                    }
                  },
                  keyboardType: TextInputType.datetime,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "DD",
                    hintStyle: headerStyle,
                    suffixText: "/",
                    border: UnderlineInputBorder(),
                    errorStyle: headerStyle.copyWith(color: Colors.red),
                  ),
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 5),
                ),
              ),
              Expanded(
                child: TextFormField(
                  focusNode: monthFocusNode,
                  controller: monthController,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(2),
                    FilteringTextInputFormatter.allow(RegExp(r'[/0-9]')),
                  ],
                  maxLines: 1,
                  keyboardType: TextInputType.datetime,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    if (value.isEmpty) {
                      monthFocusNode.unfocus();
                      FocusScope.of(context).requestFocus(dateFocusNode);
                    }
                    if (value.length == 2) {
                      yearFocusNode.requestFocus();
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "MM",
                    hintStyle: headerStyle,
                    suffixText: "/",
                    border: UnderlineInputBorder(),
                    errorStyle: headerStyle.copyWith(color: Colors.red),
                  ),
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 5),
                ),
              ),
              Expanded(
                child: TextFormField(
                  focusNode: yearFocusNode,
                  controller: yearController,
                  onChanged: (value) {
                    if (value.isEmpty) {
                      yearFocusNode.unfocus();
                      FocusScope.of(context).requestFocus(monthFocusNode);
                    }
                    if (value!.length == 4) {
                      yearFocusNode.unfocus();
                    }
                  },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(4),
                    FilteringTextInputFormatter.allow(RegExp(r'[/0-9]')),
                  ],
                  maxLines: 1,
                  keyboardType: TextInputType.datetime,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintStyle: headerStyle,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        ).then((value) {
                          if (value != null) {
                            dob = value;
                            dateController.text = dob!.day.toString();
                            monthController.text = dob!.month.toString();
                            yearController.text = dob!.year.toString();
                          }
                        });
                      },
                    ),
                    hintText: "YYYY",
                  ),
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 5),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 10.0),
      Padding(
        padding: sidePadding,
        child: Container(
          width: double.infinity,
          child: Text(
            "For HUF &  non-dividuals, enter date of\n incorporation",
            textAlign: TextAlign.start,
            style: bodyText,
          ),
        ),
      )
    ];
  }
}

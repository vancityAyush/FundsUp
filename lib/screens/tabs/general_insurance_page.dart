/**
 * Created by : Ayush Kumar
 * Created on : 06-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/utils/widget_helper.dart';
import 'package:fundsup/widgets/cards/general_insurance.dart';

class GeneralInsurancePage extends StatefulWidget {
  const GeneralInsurancePage({Key? key}) : super(key: key);

  @override
  State<GeneralInsurancePage> createState() => _GeneralInsurancePageState();
}

class _GeneralInsurancePageState extends State<GeneralInsurancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 243, 244, 1),
      appBar: myAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: greenColor,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GeneralInsuranceTab(),
        ),
      ),
    );
  }
}

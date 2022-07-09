/**
 * Created by : Ayush Kumar
 * Created on : 01-06-2022
 */
import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  final int totalSteps;
  final int currentStep;
  final void Function(int)? onStepTapped;
  const StepIndicator(
      {Key? key,
      required this.currentStep,
      this.totalSteps = 4,
      this.onStepTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 1; i <= totalSteps; i++)
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Material(
              elevation: currentStep == i ? 10.0 : 4.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                radius: 20.0,
                backgroundColor: currentStep == i
                    ? Theme.of(context).primaryColorLight
                    : Colors.white,
                child: MaterialButton(
                  onPressed: () {
                    onStepTapped!(i);
                  },
                  shape: CircleBorder(),
                  child: Text(
                    "$i",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: currentStep == i
                          ? Colors.white
                          : Theme.of(context).primaryColorLight,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

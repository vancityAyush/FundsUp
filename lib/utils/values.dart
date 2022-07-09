import 'package:fundsup/models/current_value.dart';
import 'package:fundsup/models/maturity_value.dart';

/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
final CurrentValueData data = CurrentValueData(
  currentValue: "14,00,000",
  invested: "7,00,00",
  allTimeReturn: "7,00,000",
  oneDayReturn: "-5,000",
  percentXIRR: "48,86",
  negativePercentXIRR: "0.74",
);

final CurrentValueData BondData = CurrentValueData(
  currentValue: "14,00,000",
  invested: "7,00,00",
  allTimeReturn: "7,00,000",
  oneDayReturn: "-5,000",
  percentXIRR: "48,86",
  negativePercentXIRR: "0.74",
  dateTime: DateTime(
    2022,
    9,
    29,
  ),
);

MaturityValueData maturityValueData = MaturityValueData(
  maturityValue: "14,00,000",
  investedValue: "7,00,00",
  interestRate: "7.50",
  maturityDate: "29/04/2022",
  daysRemaining: "29",
);

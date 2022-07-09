/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
class MaturityValueData {
  final String maturityValue;
  final String investedValue;
  final String interestRate;
  final String maturityDate;
  final String daysRemaining;

  MaturityValueData({
    required this.maturityValue,
    required this.investedValue,
    required this.interestRate,
    required this.maturityDate,
    required this.daysRemaining,
  });

  String get maturity => "Rs. $maturityValue";
  String get invested => "Rs. $investedValue";
  String get interest => "$interestRate% XIRR";
  String get daysLeft => "$daysRemaining days to renew";
}

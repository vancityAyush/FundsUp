/**
 * Created by : Ayush Kumar
 * Created on : 11-06-2022
 */
class CurrentValueData {
  final String currentValue;
  final String invested;
  final String allTimeReturn;
  final String oneDayReturn;
  final String percentXIRR;
  final String negativePercentXIRR;
  DateTime? dateTime;

  CurrentValueData({
    required this.currentValue,
    required this.invested,
    required this.allTimeReturn,
    required this.oneDayReturn,
    required this.percentXIRR,
    required this.negativePercentXIRR,
    this.dateTime,
  });

  String get current => "Rs.$currentValue";
  String get mutual => "Rs.$mutual";
  String get all => "Rs.$allTimeReturn";
  String get one => "Rs.$oneDayReturn";
  String get XIRR => "| + $percentXIRR% XIRR";
  String get nXIRR => "| -$negativePercentXIRR%";
  String get date {
    if (dateTime != null)
      return "( as on ${dateTime!.day}/${dateTime!.month}/${dateTime!.year})";
    return "";
  }
}

// /**
//  * Created by : Ayush Kumar
//  * Created on : 03-06-2022
//  */
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:fundsup/utils/constants.dart';
// import 'package:fundsup/widgets/custom_card.dart';
// import 'package:fundsup/widgets/indicator.dart';
//
// class LiquidityWisePie extends StatefulWidget {
//   const LiquidityWisePie({Key? key}) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() => LiquidityWisePieState();
// }
//
// class LiquidityWisePieState extends State {
//   int touchedIndex = -1;
//
//   Color color1 = const Color(0xff319ce7);
//   Color color2 = const Color(0xffef3e3e);
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomCard(
//       header: Text(
//         "Liquidity Wise",
//         style: headerStyle,
//       ),
//       child: Container(
//         height: 200,
//         width: 400,
//         child: AspectRatio(
//           aspectRatio: 4 / 2,
//           child: Column(
//             children: <Widget>[
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Indicator(
//                     color: color1,
//                     text: 'Liquid,',
//                     isSquare: false,
//                     size: touchedIndex == 0 ? 10 : 8,
//                     textColor: touchedIndex == 0 ? Colors.black : Colors.grey,
//                   ),
//                   Indicator(
//                     color: color2,
//                     text: 'Locked-in',
//                     isSquare: false,
//                     size: touchedIndex == 1 ? 10 : 8,
//                     textColor: touchedIndex == 1 ? Colors.black : Colors.grey,
//                   ),
//                 ],
//               ),
//               Flexible(
//                 flex: 1,
//                 child: AspectRatio(
//                   aspectRatio: 1,
//                   child: PieChart(
//                     PieChartData(
//                         pieTouchData: PieTouchData(touchCallback:
//                             (FlTouchEvent event, pieTouchResponse) {
//                           setState(() {
//                             if (!event.isInterestedForInteractions ||
//                                 pieTouchResponse == null ||
//                                 pieTouchResponse.touchedSection == null) {
//                               touchedIndex = -1;
//                               return;
//                             }
//                             touchedIndex = pieTouchResponse
//                                 .touchedSection!.touchedSectionIndex;
//                           });
//                         }),
//                         startDegreeOffset: 180,
//                         borderData: FlBorderData(
//                           show: false,
//                         ),
//                         sectionsSpace: 2,
//                         centerSpaceRadius: 0,
//                         sections: showingSections()),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   double graphSize = 50;
//
//   List<PieChartSectionData> showingSections() {
//     return List.generate(
//       2,
//       (i) {
//         final isTouched = i == touchedIndex;
//         final opacity = isTouched ? 1.0 : 0.6;
//
//         switch (i) {
//           case 0:
//             return PieChartSectionData(
//               color: color1.withOpacity(opacity),
//               value: 30,
//               title: '',
//               radius: graphSize,
//               titleStyle: TextStyle(
//                   fontSize: 18, fontWeight: FontWeight.bold, color: color1),
//               titlePositionPercentageOffset: 0.55,
//               borderSide: isTouched
//                   ? BorderSide(color: color1, width: 6)
//                   : BorderSide(color: color1.withOpacity(0)),
//             );
//           case 1:
//             return PieChartSectionData(
//               color: color2.withOpacity(opacity),
//               value: 40,
//               title: '',
//               radius: graphSize + 5,
//               titleStyle: TextStyle(
//                   fontSize: 18, fontWeight: FontWeight.bold, color: color2),
//               titlePositionPercentageOffset: 0.55,
//               borderSide: isTouched
//                   ? BorderSide(color: color2, width: 6)
//                   : BorderSide(color: color2.withOpacity(0)),
//             );
//           default:
//             throw Error();
//         }
//       },
//     );
//   }
// }

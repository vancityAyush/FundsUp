/**
 * Created by : Ayush Kumar
 * Created on : 03-06-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/custom_card.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  ChartData(this.x, this.y, {required this.color});
  final String x;
  final double y;
  final Color color;
}

class PieChart extends StatelessWidget {
  final String title;
  final List<ChartData> chartData;
  const PieChart({Key? key, required this.chartData, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      header: Text(
        title,
        style: headerStyle,
      ),
      child: Expanded(
        child: SfCircularChart(
          legend: Legend(
            isVisible: true,
            borderColor: Colors.black54,
            borderWidth: 2,
            // position: LegendPosition.bottom,
          ),
          series: <CircularSeries>[
            // Render pie chart

            PieSeries<ChartData, String>(
              dataSource: chartData,
              pointColorMapper: (ChartData data, _) => data.color,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              radius: '80%',
              dataLabelMapper: (ChartData data, _) => data.x,
              // dataLabelSettings: DataLabelSettings(
              //   isVisible: true,
              //   useSeriesColor: true,
              //   // Avoid labels intersection
              //   labelIntersectAction: LabelIntersectAction.shift,
              //   labelPosition: ChartDataLabelPosition.outside,
              //   connectorLineSettings: ConnectorLineSettings(
              //     type: ConnectorType.line,
              //     length: '25%',
              //   ),
              // )
            )
          ],
        ),
      ),
    );
  }
}

// class CategoryWisePie extends StatefulWidget {
//   const CategoryWisePie({Key? key}) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() => CategoryWisePieState();
// }

// class CategoryWisePieState extends State {
//   int touchedIndex = -1;
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomCard(
//       header: Text(
//         "Category Wise",
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
//                     color: const Color(0xff0293ee),
//                     text: 'Equity',
//                     isSquare: false,
//                     size: touchedIndex == 0 ? 10 : 8,
//                     textColor: touchedIndex == 0 ? Colors.black : Colors.grey,
//                   ),
//                   Indicator(
//                     color: const Color(0xfff8b250),
//                     text: 'Debt',
//                     isSquare: false,
//                     size: touchedIndex == 1 ? 10 : 8,
//                     textColor: touchedIndex == 1 ? Colors.black : Colors.grey,
//                   ),
//                   Indicator(
//                     color: const Color(0xff845bef),
//                     text: 'Others',
//                     isSquare: false,
//                     size: touchedIndex == 2 ? 10 : 8,
//                     textColor: touchedIndex == 2 ? Colors.black : Colors.grey,
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
//       3,
//       (i) {
//         final isTouched = i == touchedIndex;
//         final opacity = isTouched ? 1.0 : 0.6;
//
//         const color0 = Color(0xff0293ee);
//         const color1 = Color(0xfff8b250);
//         const color2 = Color(0xff845bef);
//
//         switch (i) {
//           case 0:
//             return PieChartSectionData(
//               color: color0.withOpacity(opacity),
//               value: 30,
//               title: '',
//               radius: graphSize,
//               titleStyle: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xff044d7c)),
//               titlePositionPercentageOffset: 0.55,
//               borderSide: isTouched
//                   ? BorderSide(color: color0, width: 6)
//                   : BorderSide(color: color0.withOpacity(0)),
//             );
//           case 1:
//             return PieChartSectionData(
//               color: color1.withOpacity(opacity),
//               value: 40,
//               title: '',
//               radius: graphSize + 5,
//               titleStyle: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xff90672d)),
//               titlePositionPercentageOffset: 0.55,
//               borderSide: isTouched
//                   ? BorderSide(color: color1, width: 6)
//                   : BorderSide(color: color2.withOpacity(0)),
//             );
//           case 2:
//             return PieChartSectionData(
//               color: color2.withOpacity(opacity),
//               value: 30,
//               title: '',
//               radius: graphSize,
//               titleStyle: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xff4c3788)),
//               titlePositionPercentageOffset: 0.6,
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

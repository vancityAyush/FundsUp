/**
 * Created by : Ayush Kumar
 * Created on : 09-07-2022
 */
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/graphs/category_pie.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class GraphSlider extends StatefulWidget {
  const GraphSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<GraphSlider> createState() => _GraphSliderState();
}

class _GraphSliderState extends State<GraphSlider> {
  int touchedIndex = 0;
  List<int> items = [0, 1, 2];
  List<Widget> graphs = [
    PieChart(
      chartData: [
        ChartData('Equity,', 25, color: Colors.red[300]!),
        ChartData('Debt', 30, color: Colors.green[300]!),
        ChartData('Others', 45, color: Colors.blue[300]!),
      ],
      title: 'Category Wise Allocation',
    ),
    PieChart(
      chartData: [
        ChartData('Liquid,,', 2, color: Colors.yellow[300]!),
        ChartData('Locked-in', 8, color: Colors.blue[300]!),
      ],
      title: 'Liquidity Wise Allocation',
    ),
    PieChart(
      chartData: [
        ChartData('Smith,,', 1, color: Colors.redAccent),
        ChartData('John', 3, color: Colors.blueAccent),
        ChartData('Jacob', 2, color: Colors.greenAccent),
        ChartData('Chris', 4, color: Colors.yellowAccent),
      ],
      title: 'Family Member Wise Allocation',
    ),
    // LiquidityWisePie(),
    // FamilyMemberWise(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GFCarousel(
          scrollPhysics: BouncingScrollPhysics(),
          enableInfiniteScroll: false,
          viewportFraction: 1.0,
          // aspectRatio: 5 / 4,
          height: 260,
          items: graphs,
          onPageChanged: (index) {
            setState(() {
              touchedIndex = index % graphs.length;
            });
          },
        ),
        DotsIndicator(
          dotsCount: graphs.length,
          decorator: DotsDecorator(
            color: Colors.grey,
            activeColor: greenColor,
          ),
          position: double.parse(touchedIndex.toString()),
        ),
      ],
    );
  }
}

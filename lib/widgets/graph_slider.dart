/**
 * Created by : Ayush Kumar
 * Created on : 09-07-2022
 */
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';
import 'package:fundsup/widgets/custom_card.dart';
import 'package:fundsup/widgets/pie_chart.dart';
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
  CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // CarouselSlider(
        //   carouselController: _controller,
        //   options: CarouselOptions(
        //     height: 300.0,
        //     aspectRatio: 8 / 4,
        //     viewportFraction: 1,
        //   ),
        //   items: [
        //     for (int i = 0; i < 4; i++)
        //       CustomCard(
        //         header: Text(
        //           "Fund Allocation",
        //           style: headerStyle,
        //         ),
        //         child: PieChartSample1(),
        //       ),
        //   ],
        // ),
        GFCarousel(
          viewportFraction: 1.0,
          aspectRatio: 8 / 7,
          items: items
              .map((e) => CustomCard(
                    header: Text(
                      "Fund Allocation",
                      style: headerStyle,
                    ),
                    child: PieChartSample1(),
                  ))
              .toList(),
          onPageChanged: (index) {
            setState(() {
              touchedIndex = index % 3;
            });
          },
        ),
        DotsIndicator(
          dotsCount: items.length,
          position: double.parse(touchedIndex.toString()),
        ),
      ],
    );
  }
}

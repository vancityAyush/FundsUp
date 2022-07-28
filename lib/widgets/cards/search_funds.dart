/**
 * Created by : Ayush Kumar
 * Created on : 09-07-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';

class SearchFunds extends StatefulWidget {
  final TabController tabController;
  const SearchFunds({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  State<SearchFunds> createState() => _SearchFundsState();
}

class _SearchFundsState extends State<SearchFunds> {
  final double space = 10;
  int currentIndex = 0;
  final List<String> funds = [
    "All",
    'Mutual Funds',
    'Fixed Deposit',
    'Life Insurance',
    'General Insurance',
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Visibility(
            visible: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Container(
                height: 40,
                child: TextField(
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    labelText: "Search",
                  ),
                ),
              ),
            ),
          ),
          TabBar(
            controller: widget.tabController,
            indicatorColor: greenColor,
            labelColor: greenColor,
            unselectedLabelColor: blueColor,
            isScrollable: true,
            tabs: funds.map(
              (e) {
                return Tab(
                  text: e,
                  height: 27,
                );
              },
            ).toList(),
          ),
          // Container(
          //   height: 50,
          //   child: ListView.separated(
          //     scrollDirection: Axis.horizontal,
          //     shrinkWrap: true,
          //     itemBuilder: (context, index) => GestureDetector(
          //       onTap: () {
          //         setState(() {
          //           currentIndex = index;
          //         });
          //       },
          //       child: Chip(
          //         label: Text(
          //           funds[index],
          //           style: bodyText.copyWith(color: Colors.white),
          //         ),
          //         backgroundColor:
          //             index == currentIndex ? greenColor : Colors.grey,
          //       ),
          //     ),
          //     separatorBuilder: (context, _) => SizedBox(width: space),
          //     itemCount: funds.length,
          //   ),
          // ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   physics: BouncingScrollPhysics(),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Chip(
          //         label: Text(
          //           "All",
          //           style: TextStyle(
          //             color: Colors.white,
          //           ),
          //         ),
          //         backgroundColor: Theme.of(context).primaryColor,
          //       ),
          //       SizedBox(
          //         width: space,
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

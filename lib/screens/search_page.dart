/**
 * Created by : Ayush Kumar
 * Created on : 29-07-2022
 */
import 'package:flutter/material.dart';
import 'package:fundsup/widgets/cards/fixed_deposit.dart';
import 'package:fundsup/widgets/cards/general_insurance.dart';
import 'package:fundsup/widgets/cards/life_insurance.dart';
import 'package:fundsup/widgets/cards/mutual_funds.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => showSearch(context: context, delegate: CustomSearchDelegate()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search Page",
        ),
        actions: [
          IconButton(
            onPressed: () {
              // method to show the search bar
              showSearch(
                context: context,
                // delegate to customize the search bar
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
    );
  }
}

final String kName = "name";
final String kWidget = "widget";

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<Map<String, dynamic>> searchTerms = [
    {kName: "Mutual Funds", kWidget: MutualFundsTab()},
    {kName: "Fixed Deposits", kWidget: FixedDepositTab()},
    {kName: "Life Insurance", kWidget: LifeInsuranceTab()},
    {kName: "General Insurance", kWidget: GeneralInsuranceTab()},
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<Map<String, dynamic>> matchQuery = [];
    for (var item in searchTerms) {
      if (item[kName].contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return result[kWidget];
        },
      ),
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<Map<String, dynamic>> matchQuery = [];
    for (var item in searchTerms) {
      if (item[kName].toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return result[kWidget];
        },
      ),
    );
  }
}

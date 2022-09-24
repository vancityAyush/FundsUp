/**
 * Created by : Ayush Kumar
 * Created on : 02-06-2022
 */
import 'package:alphabet_scroll_view/alphabet_scroll_view.dart';
import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';

class ClientListPage extends StatefulWidget {
  ClientListPage({Key? key}) : super(key: key);

  @override
  State<ClientListPage> createState() => _ClientListPageState();
}

class _ClientListPageState extends State<ClientListPage> {
  var ch = 'A';
  List<ContactInfo> contactList = List.generate(26, (index) {
    String n = '', t = '';
    if (index < 200) {
      n = 'VIJAY VEER SINGH CHAHAL';
      t = 'A';
    } else if (index < 400) {
      n = 'Bravo';
      t = 'B';
    } else {
      n = 'Gamma';
      t = 'G';
    }
    return ContactInfo(
        name: n,
        tagIndex: t,
        bgColor: Colors.orange,
        iconData: Icons.person_add);
  });

  Widget getList() {
    return AlphabetScrollView(
      isAlphabetsFiltered: false,
      list: contactList.map((e) => AlphaModel(e.name)).toList(),
      itemExtent: 500,
      itemBuilder: (_, k, id) {
        return Padding(
          padding: const EdgeInsets.only(right: 20),
          child: buildCard(k),
        );
      },
      selectedTextStyle: TextStyle(color: greenColor),
      unselectedTextStyle: TextStyle(color: Colors.black),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: getList()),
        //search bar
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: TextField(
            style: TextStyle(color: Colors.black, fontSize: 14),
            decoration: InputDecoration(
              hintText: 'Search Client by Name|PAN|Mobile No.|Client ID',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Card buildCard(int index) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      contactList[index].name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: blueColor,
                      ),
                    ),
                    Text(
                      "ABCDE1234C",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    showInfo(Icons.email, "Email", "eliaskakeleven@gmail.com"),
                    showInfo(Icons.phone, "Mobile No.", "9060842578"),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: greenColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(90),
                          ),
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Complete Registration",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: greenColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(90),
                          ),
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Reset Password",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget showInfo(IconData icon, String title, String value) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: IntrinsicWidth(
      child: Row(
        children: [
          Icon(
            icon,
            color: greenColor,
            size: 10,
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}

class ContactInfo extends ISuspensionBean {
  String name;
  String? tagIndex;

  Color? bgColor;
  IconData? iconData;

  String? img;
  String? id;
  String? firstletter;

  ContactInfo({
    required this.name,
    this.tagIndex,
    this.bgColor,
    this.iconData,
    this.img,
    this.id,
    this.firstletter,
  });

  @override
  String getSuspensionTag() => tagIndex!;

  @override
  String toString() => name;
}

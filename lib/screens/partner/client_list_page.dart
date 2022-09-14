/**
 * Created by : Ayush Kumar
 * Created on : 02-06-2022
 */
import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:fundsup/utils/constants.dart';

class ClientListPage extends StatelessWidget {
  ClientListPage({Key? key}) : super(key: key);

  List<ContactInfo> contactList = List.generate(500, (index) {
    String n = '', t = '';
    if (index < 200) {
      n = 'Aplha';
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

  @override
  Widget build(BuildContext context) {
    return AzListView(
      data: contactList,
      itemCount: contactList.length,
      itemBuilder: (context, index) => Card(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Text(
                    contactList[index].name,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
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
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    children: [
                      showInfo(
                          Icons.email, "Email", "eliaskakeleven@gmail.com"),
                      showInfo(Icons.family_restroom, "Family Head", "ABCDE"),
                      showInfo(Icons.phone, "Mobile No.", "9060842578"),
                      showInfo(Icons.credit_card, "PAN ", "ABCDE 1234F"),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black87,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
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
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black87,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Reset Password",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget showInfo(IconData icon, String title, String value) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
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

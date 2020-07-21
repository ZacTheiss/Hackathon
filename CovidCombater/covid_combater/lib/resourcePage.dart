import 'package:flutter/material.dart';
import 'notificationDetailPage.dart'; //Used for the push to the detail page
import 'package:mongo_dart/mongo_dart.dart';
import 'package:grouped_list/grouped_list.dart';

List _elements = [
  {'name': 'Cough', 'group': 'Symptoms'},
  {'name': 'Shortness of breath', 'group': 'Symptoms'},
  {'name': 'Fever', 'group': 'Symptoms'},
  {'name': 'Mosaic Medical Center - Maryville', 'group': 'Testing Locations'},
  {'name': 'Mosaic Specialty Clinic', 'group': 'Testing Locations'},
  {'name': 'cdc.gov', 'group': 'Resources'},
];

class ResourcePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(161, 161, 161, 1),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Next Steps', style: TextStyle(fontFamily: 'Open Sans')),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color.fromRGBO(0, 103, 71, 1),
                Color.fromRGBO(4, 63, 45, 1),
              ])),
        ),
      ),
      body: 
      GroupedListView<dynamic, String>(
        groupBy: (element) => element['group'],
        elements: _elements,
        useStickyGroupSeparators: false,
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Open Sans'),
          ),
        ),
        itemBuilder: (c, element) {
          return Card(
            color: Color.fromRGBO(161, 161, 161, 1),
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container(
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                title: Text(element['name'], style: TextStyle(fontFamily: 'Open Sans'),),
              ),
            ),
          );
        },
      ),
    );
  }
}

//This document will need a database connection save data as to whom in contact
// Feel free to test the code, then we can merge branches or comment the DB connection
// and I can grab and insert. Up to you, I have not used merging much

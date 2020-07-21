import 'package:flutter/material.dart';
import 'notificationDetailPage.dart'; //Used for the push to the detail page
import 'package:mongo_dart/mongo_dart.dart';

class ResourcePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Steps'),
      ),
      body: GroupedListView<dynamic, String>(
        groupBy: (element) => element['group'],
        elements: _elements,
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        itemBuilder: (c, element) {
          return Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container(
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                title: Text(element['name']),
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

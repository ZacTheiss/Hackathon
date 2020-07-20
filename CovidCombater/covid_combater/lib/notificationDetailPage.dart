import 'package:flutter/material.dart';
import 'contact.dart';

class NotificationDetailPage extends StatelessWidget {
  final Contact contactInfo;

  NotificationDetailPage({Key key, @required this.contactInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(contactInfo.name),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  contactInfo.location,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                  child: Text(
                contactInfo.date,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              )),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                  child: Text(
                contactInfo.time,
              )),
            ),
          ],
        ));
  }
}

//This document will need a database connection to pull data for who has been in contact
// Feel free to test the code, then we can merge branches or comment the DB connection
// and I can grab and insert. Up to you, I have not used merging much

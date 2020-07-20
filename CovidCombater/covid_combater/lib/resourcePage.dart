import 'package:flutter/material.dart';
import 'notificationDetailPage.dart'; //Used for the push to the detail page

class ResourcePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'This is the resource page',
              ),
            )
          ],
        ),
      ),
    );
  }
}

//This document will need a database connection save data as to whom in contact
// Feel free to test the code, then we can merge branches or comment the DB connection
// and I can grab and insert. Up to you, I have not used merging much

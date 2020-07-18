import 'package:flutter/material.dart';
import 'notificationDetailPage.dart'; //Used for the push to the detail page

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'This is the notification page',
              ),
            )
          ],
        ),
      ),
    );
  }
}

//This will be code for the Contact with COVID-19 button
// onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationDetailPage())))),

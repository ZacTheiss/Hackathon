import 'package:flutter/material.dart';
import 'notificationDetailPage.dart'; //Used for the push to the detail page

class ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'This is the confirmation page',
              ),
            )
          ],
        ),
      ),
    );
  }
}
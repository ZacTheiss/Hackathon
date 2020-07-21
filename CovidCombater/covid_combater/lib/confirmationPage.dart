import 'package:flutter/material.dart';
import 'tabView.dart';

class ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'Thank you',
              ),
            ),
            Container(
              child: Text(
                'Those you have been in contact with will be notified.',
              ),
            ),
            Container(
              child: RaisedButton(
                  child: Text('Done'),
                  onPressed: () => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => TabView()),
                        (Route<dynamic> route) => false,
                      )),
            ),
          ],
        ),
      ),
    );
  }
}

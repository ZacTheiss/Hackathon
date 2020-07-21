import 'package:flutter/material.dart';
import 'tabView.dart';

class ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Confirmation', style: TextStyle(fontFamily: 'Open Sans')),
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

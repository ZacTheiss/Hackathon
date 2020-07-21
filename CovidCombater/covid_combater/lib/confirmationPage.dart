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
      backgroundColor: Color.fromRGBO(161, 161, 161, 1),
      body:  
      Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
            Image.asset('images/success.png', height: 150),
            Container(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Text(
                'Thank you',
                style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 80),
              child: Text(
                'Those you have been in contact with will be notified.',
                style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,), textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 80,
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => TabView()),
                        (Route<dynamic> route) => false,
                      ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                padding: const EdgeInsets.all(0.0),
                child: Ink(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(0, 103, 71, 1),
                      Color.fromRGBO(4, 63, 45, 1),
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Container(
                    constraints: const BoxConstraints(
                        minWidth: 88.0,
                        minHeight: 36.0), // min sizes for Material buttons
                    alignment: Alignment.center,
                    child: Text(
                      'Done',
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 18.0,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

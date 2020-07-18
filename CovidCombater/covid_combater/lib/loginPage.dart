import 'package:flutter/material.dart';
import 'homePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'COVID Combater',
                style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            // The onPressed must have a () before the navigator because the onPressed
            // accepts void as a function, but the Navigator.push returns a Future.
            // Type mismatch requires the () to hide the return value.
            Container(height: 50, child: RaisedButton(child: Text('Login'), onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())))),
          ],
        ),
      ),
    );
  }
}

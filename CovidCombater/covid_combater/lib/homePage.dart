import 'package:flutter/material.dart';
import 'questionnairePage.dart';
import 'resourcePage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: RaisedButton(
                child: Text('I have tested positive for COVID-19'),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QuestionnairePage())),
              ),
            ),
            Container(
              child: RaisedButton(
                child: Text(
                    'I have been in contact with someone who has tested postiive for COVID-19'),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResourcePage())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

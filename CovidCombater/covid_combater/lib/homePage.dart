import 'package:flutter/material.dart';
import 'questionnairePage.dart';
import 'resourcePage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home', style: TextStyle(fontFamily: 'Open Sans')),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromRGBO(0, 103, 71, 1),
                Color.fromRGBO(4, 63, 45, 1),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(161, 161, 161, 1),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                child: Text('I have tested positive for COVID-19', style: TextStyle(fontFamily: 'Open Sans', fontSize: 18.0), textAlign: TextAlign.center,),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QuestionnairePage())),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                child: Text(
                    'I have been in contact with someone who has tested postive for COVID-19', style: TextStyle(fontFamily: 'Open Sans', fontSize: 18.0), textAlign: TextAlign.center,),
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

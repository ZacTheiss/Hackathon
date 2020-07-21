import 'package:flutter/material.dart';
import 'confirmationPage.dart';

class QuestionnairePage extends StatefulWidget {
  @override
  _QuestionnairePageState createState() => _QuestionnairePageState();
}

class _QuestionnairePageState extends State<QuestionnairePage> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Questionnaire', style: TextStyle(fontFamily: 'Open Sans')),
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
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text("Which of the following buildings have you been in?"),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('Student Union'),
                value: _value,
                onChanged: (newValue) {
                  setState(() {
                    _value = newValue;
                  });
                },
              ),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('Library'),
                value: _value,
                onChanged: (newValue) {
                  setState(() {
                    _value = newValue;
                  });
                },
              ),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('Fitness Center'),
                value: _value,
                onChanged: (newValue) {
                  setState(() {
                    _value = newValue;
                  });
                },
              ),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('The Station'),
                value: _value,
                onChanged: (newValue) {
                  setState(() {
                    _value = newValue;
                  });
                },
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Other',
                ),
              ),
            ),
            Container(
              child: RaisedButton(
                child: Text('Submit'),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConfirmationPage())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//This document will need a database connection to save what the enter for contact
// Feel free to test the code, then we can merge branches or comment the DB connection
// and I can grab and insert. Up to you, I have not used merging much

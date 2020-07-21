import 'package:flutter/material.dart';
import 'confirmationPage.dart';

class QuestionnairePage extends StatefulWidget {
  @override
  _QuestionnairePageState createState() => _QuestionnairePageState();
}

class _QuestionnairePageState extends State<QuestionnairePage> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  String _dateTime1 = '';
  String _dateTime2 = '';
  String _dateTime3 = '';
  String _dateTime4 = '';
  String _dateTime5 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionnaire'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                "Up to 48 hours before your test and until now, which buildings have you been in for a period longer than 15 minutes (exclude your classes)",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('Student Union'),
                value: _value1,
                onChanged: (newValue) {
                  setState(() {
                    _value1 = newValue;
                  });
                },
              ),
            ),
            Visibility(
              visible: _value1,
              child: TextField(
                onChanged: (String value) {
                  _dateTime1 = value;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Date and Time',
                ),
              ),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('Library'),
                value: _value2,
                onChanged: (newValue) {
                  setState(() {
                    _value2 = newValue;
                  });
                },
              ),
            ),
            Visibility(
              visible: _value2,
              child: TextField(
                onChanged: (String value) {
                  _dateTime2 = value;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Date and Time',
                ),
              ),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('Fitness Center'),
                value: _value3,
                onChanged: (newValue) {
                  setState(() {
                    _value3 = newValue;
                  });
                },
              ),
            ),
            Visibility(
              visible: _value3,
              child: TextField(
                onChanged: (String value) {
                  _dateTime3 = value;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Date and Time',
                ),
              ),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('The Station'),
                value: _value4,
                onChanged: (newValue) {
                  setState(() {
                    _value4 = newValue;
                  });
                },
              ),
            ),
            Visibility(
              visible: _value4,
              child: TextField(
                onChanged: (String value) {
                  _dateTime4 = value;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Date and Time',
                ),
              ),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('Other'),
                value: _value5,
                onChanged: (newValue) {
                  setState(() {
                    _value5 = newValue;
                  });
                },
              ),
            ),
            Visibility(
              visible: _value5,
              child: TextField(
                onChanged: (String value) {
                  _dateTime5 = value;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Location, Date, and Time',
                ),
              ),
            ),
            Container(
              child: RaisedButton(
                  child: Text('Submit'),
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmationPage()));
                  } //=> Navigator.push(
                  //context,
                  //MaterialPageRoute(
                  //builder: (context) => ConfirmationPage())),
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

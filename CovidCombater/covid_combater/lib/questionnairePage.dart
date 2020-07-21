import 'package:flutter/material.dart';
import 'confirmationPage.dart';
import 'dart:async';

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
  DateTime _dateTime1 = DateTime.now();
  DateTime _dateTime2 = DateTime.now();
  DateTime _dateTime3 = DateTime.now();
  DateTime _dateTime4 = DateTime.now();
  DateTime _dateTime5 = DateTime.now();

  Future<DateTime> _selectDateTime(
      BuildContext context, DateTime dt, int numb) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: dt,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != dt) if (numb == 1)
      setState(() {
        _dateTime1 = picked;
      });
    else if (numb == 2)
      setState(() {
        _dateTime2 = picked;
      });
    else if (numb == 3)
      setState(() {
        _dateTime3 = picked;
      });
    else if (numb == 4)
      setState(() {
        _dateTime4 = picked;
      });
    else
      setState(() {
        _dateTime5 = picked;
      });
  }

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
                  if (_value1) {
                    _selectDateTime(context, _dateTime1, 1);
                  }
                },
              ),
            ),
            Visibility(
              visible: _value1,
              child: Text("${_dateTime1.toLocal()}".split(' ')[0]),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('Library'),
                value: _value2,
                onChanged: (newValue) {
                  setState(() {
                    _value2 = newValue;
                  });
                  if (_value2) {
                    _selectDateTime(context, _dateTime2, 2);
                  }
                },
              ),
            ),
            Visibility(
              visible: _value2,
              child: Text("${_dateTime2.toLocal()}".split(' ')[0]),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('Fitness Center'),
                value: _value3,
                onChanged: (newValue) {
                  setState(() {
                    _value3 = newValue;
                  });
                  if (_value3) {
                    _selectDateTime(context, _dateTime3, 3);
                  }
                },
              ),
            ),
            Visibility(
              visible: _value3,
              child: Text("${_dateTime3.toLocal()}".split(' ')[0]),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('The Station'),
                value: _value4,
                onChanged: (newValue) {
                  setState(() {
                    _value4 = newValue;
                  });
                  if (_value4) {
                    _selectDateTime(context, _dateTime4, 4);
                  }
                },
              ),
            ),
            Visibility(
              visible: _value4,
              child: Text("${_dateTime4.toLocal()}".split(' ')[0]),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('Other'),
                value: _value5,
                onChanged: (newValue) {
                  setState(() {
                    _value5 = newValue;
                  });
                  if (_value5) {
                    _selectDateTime(context, _dateTime5, 5);
                  }
                },
              ),
            ),
            Visibility(
              visible: _value5,
              child: Text("${_dateTime5.toLocal()}".split(' ')[0]),
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

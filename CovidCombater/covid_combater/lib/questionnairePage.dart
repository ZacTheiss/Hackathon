import 'package:flutter/material.dart';
import 'confirmationPage.dart';
import 'dart:async';

class QuestionnairePage extends StatefulWidget {
  @override
  _QuestionnairePageState createState() => _QuestionnairePageState();
}

class _QuestionnairePageState extends State<QuestionnairePage> {
  bool _unionValue = true;
  bool _libraryValue = false;
  bool _fitnessValue = false;
  bool _stationValue = false;
  bool _otherValue = false;

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
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(161, 161, 161, 1),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
              child: Text(
                "Up to 48 hours before your test and until now, which buildings have you been in for a period longer than 15 minutes (exclude your classes)",
                style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: CheckboxListTile(
                checkColor: Colors.white, 
                activeColor: Color.fromRGBO(0, 103, 71, 1),
                title: Text(
                  'Student Union',
                  style:
                      TextStyle(fontFamily: 'Open Sans', color: Colors.black),
                ),
                value: _unionValue,
                onChanged: (newValue) {
                  setState(() {
                    _unionValue = newValue;
                  });
                  if (_unionValue) {
                    _selectDateTime(context, _dateTime1, 1);
                  }
                },
              ),
            ),
            Visibility(
              visible: _unionValue,
              child: Text("${_dateTime1.toLocal()}".split(' ')[0], style: TextStyle(fontFamily: 'Open Sans',
              fontSize: 16.0),
              ), 
            ),
            Container(
              child: CheckboxListTile(
                checkColor: Colors.white, 
                activeColor: Color.fromRGBO(0, 103, 71, 1),
                title: Text(
                  'Library',
                  style:
                      TextStyle(fontFamily: 'Open Sans', color: Colors.black),
                ),
                value: _libraryValue,
                onChanged: (newValue) {
                  setState(() {
                    _libraryValue = newValue;
                  });
                  if (_libraryValue) {
                    _selectDateTime(context, _dateTime2, 2);
                  }
                },
              ),
            ),
            Visibility(
              visible: _libraryValue,
              child: Text("${_dateTime2.toLocal()}".split(' ')[0], ),
            ),
            Container(
              child: CheckboxListTile(
                checkColor: Colors.white, 
                activeColor: Color.fromRGBO(0, 103, 71, 1),
                title: Text(
                  'Fitness Center',
                  style:
                      TextStyle(fontFamily: 'Open Sans', color: Colors.black),
                ),
                value: _fitnessValue,
                onChanged: (newValue) {
                  setState(() {
                    _fitnessValue = newValue;
                  });
                  if (_fitnessValue) {
                    _selectDateTime(context, _dateTime3, 3);
                  }
                },
              ),
            ),
            Visibility(
              visible: _fitnessValue,
              child: Text("${_dateTime3.toLocal()}".split(' ')[0],
              style: TextStyle(fontFamily: 'Open Sans',
              fontSize: 16.0),
            ),
            ),
            Container(
              child: CheckboxListTile(
                checkColor: Colors.white, 
                activeColor: Color.fromRGBO(0, 103, 71, 1),
                title: Text(
                  'The Station',
                  style:
                      TextStyle(fontFamily: 'Open Sans', color: Colors.black),
                ),
                value: _stationValue,
                onChanged: (newValue) {
                  setState(() {
                    _stationValue = newValue;
                  });
                  if (_stationValue) {
                    _selectDateTime(context, _dateTime4, 4);
                  }
                },
              ),
            ),
            Visibility(
              visible: _stationValue,
              child: Text("${_dateTime4.toLocal()}".split(' ')[0],
              style: TextStyle(fontFamily: 'Open Sans',
              fontSize: 16.0),),
            ),
            Container(
              child: CheckboxListTile(
                checkColor: Colors.white, 
                activeColor: Color.fromRGBO(0, 103, 71, 1),
                title: Text(
                  'Other',
                  style:
                      TextStyle(fontFamily: 'Open Sans', color: Colors.black),
                ),
                value: _otherValue,
                onChanged: (newValue) {
                  setState(() {
                    _otherValue = newValue;
                  });
                  if (_otherValue) {
                    _selectDateTime(context, _dateTime5, 5);
                  }
                },
              ),
            ),
            Visibility(
              visible: _otherValue,
              child: Text("${_dateTime5.toLocal()}".split(' ')[0],
              style: TextStyle(fontFamily: 'Open Sans',
              fontSize: 16.0),),
            ),
            Container(
              height: 80,
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConfirmationPage())),
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
                      'Submit',
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 18.0,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//This document will need a database connection to save what the enter for contact
// Feel free to test the code, then we can merge branches or comment the DB connection
// and I can grab and insert. Up to you, I have not used merging much

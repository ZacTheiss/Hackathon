import 'package:flutter/material.dart';
import 'confirmationPage.dart';

class QuestionnairePage extends StatefulWidget {
  @override
  _QuestionnairePageState createState() => _QuestionnairePageState();
}

class _QuestionnairePageState extends State<QuestionnairePage> {
  bool _unionValue = true;
  bool _libraryValue = false;
  bool _fitnessValue = false;
  bool _stationValue = false;

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
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Text("Which of the following buildings have you been in?",
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  textAlign: TextAlign.center),
            ),
            Container(
              child: CheckboxListTile(
                checkColor: Colors.white,
                activeColor: Color.fromRGBO(0, 103, 71, 1),
                title: Text('Student Union',
                    style: TextStyle(
                        fontFamily: 'Open Sans', color: Colors.black)),
                value: _unionValue,
                onChanged: (newValue) {
                  setState(() {
                    _unionValue = newValue;
                  });
                },
              ),
            ),
            Container(
              child: CheckboxListTile(
                checkColor: Colors.white,
                activeColor: Color.fromRGBO(0, 103, 71, 1),
                title: Text('Library',
                    style: TextStyle(
                        fontFamily: 'Open Sans', color: Colors.black)),
                value: _libraryValue,
                onChanged: (newValue) {
                  setState(() {
                    _libraryValue = newValue;
                  });
                },
              ),
            ),
            Container(
              child: CheckboxListTile(
                checkColor: Colors.white,
                activeColor: Color.fromRGBO(0, 103, 71, 1),
                title: Text('Fitness Center',
                    style: TextStyle(
                        fontFamily: 'Open Sans', color: Colors.black)),
                value: _fitnessValue,
                onChanged: (newValue) {
                  setState(() {
                    _fitnessValue = newValue;
                  });
                },
              ),
            ),
            Container(
              child: CheckboxListTile(
                checkColor: Colors.white,
                activeColor: Color.fromRGBO(0, 103, 71, 1),
                title: Text('The Station',
                    style: TextStyle(
                        fontFamily: 'Open Sans', color: Colors.black)),
                value: _stationValue,
                onChanged: (newValue) {
                  setState(() {
                    _stationValue = newValue;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Other",
                  hintStyle:
                      TextStyle(color: Colors.black, fontFamily: 'Open Sans'),
                ),
              ),
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

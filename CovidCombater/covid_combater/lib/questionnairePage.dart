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
        title: Text('Questionnaire'),
      ),
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

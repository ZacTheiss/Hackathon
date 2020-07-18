import 'package:flutter/material.dart';
import 'questionnairePage.dart';
//Assuming this to be the 'Next Steps' Page - If wrong, add note to change
import 'resourcePage.dart'; //Found in the Been in Contact with a COVID patient.

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'This is the home page',
              ),
            )
          ],
        ),
      ),
    );
  }
}

//This will be code for the Positive COVID-19 button
// onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionnairePage())))),

//This will be code for the Contact with COVID-19 button
// onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ResourcePage())))),

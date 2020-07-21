import 'package:flutter/material.dart';
import 'questionnairePage.dart';
import 'resourcePage.dart';
import 'package:mongo_dart/mongo_dart.dart';

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
                  onPressed: () async {
                    Db db = Db('mongodb://localhost:27017/test');
                    await db.open();
                    DbCollection coll = db.collection('people');

                    await coll.update(await coll.findOne(where.eq('id', 101)), {
                      r'$set': {'positiveTest': true}
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResourcePage()));
                  } //=> Navigator.push(context,
                  //MaterialPageRoute(builder: (context) => ResourcePage())),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

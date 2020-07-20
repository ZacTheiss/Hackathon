import 'package:flutter/material.dart';

class GuidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guide'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'CDC Recommendations',
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
                child: ExpansionTile(
                  title: Text('Wash Your Hands'),
                  children: <Widget>[
                    Text('Wash your hands for at least 20 seconds.'),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
                child: ExpansionTile(
                  title: Text('Wear a Mask'),
                  children: <Widget>[
                    Text('Wearing a mask protects others in the event that you are sick.'),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
                child: ExpansionTile(
                  title: Text('Practice Social Distancing'),
                  children: <Widget>[
                    Text('Stand at least 6ft from others.'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// DO WE WANT to have links to the 3 CDC recommendations?
// If we want it to opena webpage, here is a link
// https://pub.dev/packages/url_launcher

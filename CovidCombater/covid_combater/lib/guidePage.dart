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
                'This is the guide page',
              ),
            )
          ],
        ),
      ),
    );
  }
}
// DO WE WANT to have links to the 3 CDC recommendations?
// If we want it to opena webpage, here is a link
// https://pub.dev/packages/url_launcher

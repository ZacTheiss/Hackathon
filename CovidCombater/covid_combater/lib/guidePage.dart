import 'package:flutter/material.dart';

class GuidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Guide', style: TextStyle(fontFamily: 'Open Sans')),
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
              padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: Text(
                'CDC Recommendations',
                style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 120.0,
              margin: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 24.0,
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 124.0,
                    margin: new EdgeInsets.only(left: 46.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 103, 71, 1),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    alignment: FractionalOffset.centerLeft,
                    child: Image(
                      image: AssetImage("images/handWashing.png"),
                      height: 92.0,
                      width: 92.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(height: 4.0),
                        Text('Wash your hands',
                            style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                                textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120.0,
              margin: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 24.0,
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 124.0,
                    margin: new EdgeInsets.only(left: 46.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 103, 71, 1),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    alignment: FractionalOffset.centerLeft,
                    child: Image(
                      image: AssetImage("images/mask.png"),
                      height: 92.0,
                      width: 92.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(height: 4.0),
                        Text('Wear a mask',
                            style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                                textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120.0,
              margin: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 24.0,
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 124.0,
                    margin: new EdgeInsets.only(left: 46.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 103, 71, 1),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    alignment: FractionalOffset.centerLeft,
                    child: Image(
                      image: AssetImage("images/distancing.png"),
                      height: 92.0,
                      width: 92.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(height: 4.0),
                        Text(
                          'Practice social distancing',
                          style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
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

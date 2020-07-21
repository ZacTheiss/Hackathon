import 'package:flutter/material.dart';
import 'homePage.dart';
import 'guidePage.dart';
import 'notificationPage.dart';

class TabView extends StatefulWidget {
  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  int index = 0;
  List<Widget> _widgets = [HomePage(), GuidePage(), NotificationPage()];
  tapped(int tappedIndex) {
    setState(() {
      index = tappedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _widgets[index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(0, 103, 71, 1),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          currentIndex: index,
          onTap: tapped,
          items: [
            BottomNavigationBarItem(
                icon: new Icon(Icons.home), title: Text('Home', style: TextStyle(fontFamily: 'Open Sans'))),
            BottomNavigationBarItem(
                icon: new Icon(Icons.info), title: Text('Guide', style: TextStyle(fontFamily: 'Open Sans'))),
            BottomNavigationBarItem(
                icon: new Icon(Icons.notifications),
                title: Text('Notifications', style: TextStyle(fontFamily: 'Open Sans'))),
          ],
        ),
      ),
    );
  }
}

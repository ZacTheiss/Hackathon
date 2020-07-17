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
          currentIndex: index,
          onTap: tapped,
          items: [
            BottomNavigationBarItem(
                icon: new Icon(Icons.home), 
                title: Text('Home')),
            BottomNavigationBarItem(
                icon: new Icon(Icons.info), 
                title: Text('Guide')),
            BottomNavigationBarItem(
                icon: new Icon(Icons.notifications),
                title: Text('Notifications')),
          ],
        ),
      ),
    );
  }
}

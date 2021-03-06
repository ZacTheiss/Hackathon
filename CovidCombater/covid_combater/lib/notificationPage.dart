import 'package:covid_combater/contact.dart';
import 'package:flutter/material.dart';
import 'notificationDetailPage.dart'; //Used for the push to the detail page
import 'contactData.dart';

var contactData = Contact();

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Notifications', style: TextStyle(fontFamily: 'Open Sans')),
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
        child: ListView.separated(
            itemBuilder: (context, index) {
              var contactInfo = contact[index];
              return ListTile(
                  title: Text(contactInfo.date, style: TextStyle(fontFamily: 'Open Sans', color: Colors.black),),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationDetailPage(
                              contactInfo: contact[index]),
                        ));
                  });
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.black,
                height: 2.0,
              );
            },
            itemCount: contact.length),
      ),
    );
  }
}
//This will be code for the Contact with COVID-19 button
// onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationDetailPage())))),

//This document will need a database connection to pull data for who has been in contact (same as notificationDetailPage)
// Feel free to test the code, then we can merge branches or comment the DB connection
// and I can grab and insert. Up to you, I have not used merging much

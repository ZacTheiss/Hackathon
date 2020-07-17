import 'package:flutter/material.dart';
import 'package:location/location.dart'; //Used for location tracking on the device

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // Stateless is when the widget is not dependent on other information.
  // Similar to a ImageView, use for items that are not changing.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  //This class verifies the permission of the application for location services.
  //If the locations data is turned off, our Permission Granted variable will be set to denied.
  //

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

// class LocationServices {
//   Location loc = new Location();
//   bool serviceEnabling;
//   PermissionStatus permGranted;
//   LocationData locData;
//   UserLocation useLoc;

//   void locServicing() async {
//     serviceEnabling = await loc.serviceEnabled();
//     if (!serviceEnabling) {
//       serviceEnabling = await loc.requestService();
//       if (!serviceEnabling) return;
//     }
//   }

//   void permServicing() async {
//     permGranted = await loc.hasPermission();
//     if (permGranted == PermissionStatus.denied) {
//       permGranted = await loc.requestPermission();
//       if (permGranted == PermissionStatus.granted) return;
//     }
//   }

//   Stream<UserLocation> currLocation() async* {
//     try {
//       locData = await loc.getLocation();
//       useLoc = UserLocation(
//         latitude: UserLocation.latitude,
//         longitude: UserLocation.longitude,
//       );
//     } on Exception catch (exc) {}
//     return useLoc;
//   }
// }

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Test'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PageTwo()));
        },
        tooltip: 'Next Page',
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  // This class creates a second page that is accessible from the first page
  // Using the app bar, there is a back button built in, and then there is a
  // text box that can be used to enter more information as to where an
  // individual has been, this cannot be left blank.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: SizedBox(
        width: 150.0,
        height: 100.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // To change the box size, wrap the textFormField in a SizedBox.
            SizedBox(
              // Do not reach the edges of the screen.
              width: 400.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.location_city),
                  hintText: 'Where have you been for 15 minutes or longer?',
                  labelText: 'List locations you have visited',
                  counterText: '0 Characters',
                  contentPadding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
                  border: const OutlineInputBorder(),
                ),
                onSaved: (String textBox) {
                  // This will conntect to the DB and save the data based on the DB structure.
                  // Code can be added to verify the text submitted.
                },
                // This will validate that the textbox is not empty.
                // A check on the length is performed, if length is 0, fails
                // and displays a warning wanting more text.
                //Starts with was required, in case a '0' is used somewhere in input.
                // validator: (String textBox) {
                //   String stringTextBool = textBox.length.toString();
                //   return stringTextBool.startsWith('0') ? 'Canont be blank.' : null;
                // },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the HomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  } */

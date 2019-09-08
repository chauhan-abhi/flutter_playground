import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(primarySwatch: Colors.deepPurple),
        debugShowCheckedModeBanner: false,
        home: new HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          padding: const EdgeInsets.all(0.0),
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Abhi"),
              accountEmail: new Text("abc.example.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white24,
                child: new Text("A", style: new TextStyle(color: Colors.white, fontSize: 24.0)),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                backgroundColor: Colors.white24,
                child: new Text("A", style: new TextStyle(color: Colors.white, fontSize: 24.0)),
              ),
              ],
            ),
            new ListTile(
              title: new Text("Page 1"),
              trailing: new Icon(Icons.home),
            ),
            new ListTile(
              title: new Text("Page 2"),
              trailing: new Icon(Icons.add_alarm),
            ),
            new ListTile(
              title: new Text("Page 2"),
              trailing: new Icon(Icons.settings),
            )
          ],
        ),
      ),
      body: new Container(
          child: new Center(
        child: new Text("Home Page"),
      )),
    );
  }
}

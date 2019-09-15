import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
          primarySwatch: Colors.deepPurple,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS
              ? Colors.grey[50]
              : null),
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
      // routes: <String, WidgetBuilder>{
      //   "/a": (BuildContext context) => new Page1("Page 1"),
      // },
    );
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
              accountName: new Text("Abhijeet Singh"),
              accountEmail: new Text("abc.example.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.deepPurple
                        : Colors.white24,
                child: new Text("A",
                    style: new TextStyle(color: Colors.white, fontSize: 24.0)),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white24,
                  child: new Text("A",
                      style:
                          new TextStyle(color: Colors.white, fontSize: 14.0)),
                ),
              ],
            ),
            new ListTile(
                title: new Text("Page 1"),
                trailing: new Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).pop();
                  //Navigator.of(context).pushNamed("/a");
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Page1("Page One")));
                }),
            new ListTile(
                title: new Text("Page 2"),
                trailing: new Icon(Icons.add_alarm),
                onTap: () {
                  Navigator.of(context).pop();
                  //Navigator.of(context).pushNamed("/a");
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Page1("Page Two")));
                }),
            new ListTile(
              title: new Text("Page 2"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
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

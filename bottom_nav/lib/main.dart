import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Utils App"),
      ),
      body: new UtilBody()
    );
  }
}

class UtilBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new RaisedButton( 
          child: new Text("Click Me", style: new TextStyle(color: Colors.white),
          ),
          
          onPressed: () => Scaffold.of(context).showSnackBar(new SnackBar(
            content: new Text("File downloading started"),
            duration: new Duration(seconds: 3),
          )),
        ),
      ),
    );
  }
}

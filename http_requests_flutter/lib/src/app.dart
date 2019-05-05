import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<MyApp> {
  int counter = 0;

  void fetchImage() {

  }

  Widget build(context) {
    return MaterialApp(
      home:Scaffold(
        body: Text("$counter"),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
      )
    );
  }
}
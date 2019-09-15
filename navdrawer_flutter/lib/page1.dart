import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {

  final String title;

  Page1(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Text(title),
      ),
    );
  }

}
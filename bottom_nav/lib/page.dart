import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  final String title;

  Page(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text(this.title)
      ),
        
    );
  }
}
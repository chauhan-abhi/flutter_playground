import 'package:flutter/material.dart';
import '../widgets/cat.dart'; 

 class Home extends StatefulWidget {
   HomeState createState() => HomeState();
 }

 class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aniamtion!'),
      ),
      body: buildAnimation(),
    );
  }

  Widget buildAnimation() {
    return Cat();
  }
}
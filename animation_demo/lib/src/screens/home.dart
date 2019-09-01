import 'package:flutter/material.dart';
import '../widgets/cat.dart';

class Home extends StatefulWidget {
 
  HomeState createState() => HomeState();
} 

class HomeState extends State<Home> with TickerProviderStateMixin{

  
  Animation<double> catAnimation;
  
  // catController provides the ability to start,
  // stop,restart the animation 
  AnimationController catController;

  // only for classes extending State class
  initState() {
    super.initState();
     
    catController =AnimationController(
      duration: Duration(seconds: 2),
      // Ticker Provider provides the outside world a handle to 
      // our animation widget and tell AnimationController to 
      // to progress along the animation and render next frame
      // Ticker provider mixed-in this class
      vsync: this,
    );
    // Tween describes the range that the value being animated spans
    catAnimation =Tween(begin: 0.0, end: 100.0)
      .animate(
        CurvedAnimation(
          parent: catController,
          curve: Curves.easeIn,
        ),
      );

  }

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

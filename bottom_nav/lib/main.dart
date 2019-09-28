import 'package:flutter/material.dart';
import 'page.dart';
import 'stepper.dart';

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

class _HomePageState extends State<HomePage>
  with SingleTickerProviderStateMixin {
  TabController tabController;


  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Utils App"),
        bottom: new TabBar(
          controller: tabController,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.favorite),
            ),
             new Tab(
              icon: new Icon(Icons.email),
            )
          ],
        ),
      ),
      // body: new UtilBody(),       --> for snackbar, alert dialog
      // body: new StepperBody(),    --> for stepper widger
      body: new TabBarView(
      children: <Widget>[
        new Page("First"),
        new Page("Second")
        ],
        controller: tabController,
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
        onPressed: () => print("FAB pressed"),
      ),
      // bottomNavigationBar: new Material(
      //   color: Colors.teal,
      //   child: new TabBar(
      //     controller: tabController,
      //     tabs: <Widget>[
      //       new Tab(
      //         icon: new Icon(Icons.favorite),
      //       ),
      //        new Tab(
      //         icon: new Icon(Icons.email),
      //       )
      //     ],
      //   ),
      // ),
      );
    }
}


class UtilBody extends StatelessWidget {

  AlertDialog dialog = new AlertDialog(
    content: new Text(
      "This is a dialog widget",
      style: new TextStyle(fontSize: 18.0)
    ),
    title: new Text("Diaog Title"),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new RaisedButton( 
          child: new Text("Click Me", style: new TextStyle(color: Colors.white),
          ),

          // onPressed: () => Scaffold.of(context).showSnackBar(new SnackBar(
          //   content: new Text("File downloading started"),
          //   duration: new Duration(seconds: 3),
          // )),
          onPressed: () => showDialog(context: context, child: dialog),
        ),
      ),
    );
  }
}

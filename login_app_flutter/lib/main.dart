import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeIn);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.greenAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
            // below two lines are for darkening or
            // applying an overlay
            color: Colors.black38,
            colorBlendMode: BlendMode.darken,
          ),
          new Theme(
              data: new ThemeData(
                  brightness: Brightness.dark,
                  inputDecorationTheme: new InputDecorationTheme(
                    labelStyle:
                        new TextStyle(color: Colors.tealAccent, fontSize: 25.0),
                  )),
              isMaterialAppTheme: true,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /* new Image.asset("assets/logo.png",
                  height: _iconAnimation.value * 156,
                  width: _iconAnimation.value * 156,
                )*/
                  new FlutterLogo(
                    size: _iconAnimation.value * 140,
                  ),
                  new Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Form(
                      autovalidate: true,
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                                labelText: "Enter Email",
                                fillColor: Colors.white),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                                labelText: "Enter Password"),
                            keyboardType: TextInputType.text,
                            obscureText: true, // show dots or star in password
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 60.0),
                          ),
                          new MaterialButton(
                            height: 50.0,
                            minWidth: 150.0,
                            color: Colors.teal,
                            textColor: Colors.white,
                            child: new Icon(
                              Icons.arrow_right,
                              size: 40.0,
                            ),
                            onPressed: () => {},
                            splashColor: Colors.redAccent,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}

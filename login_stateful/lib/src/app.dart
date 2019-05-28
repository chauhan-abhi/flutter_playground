import 'package:flutter/material.dart';
import 'screens/login_screen_bloc.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title: "Log Me In!",
      home: Scaffold(
          // uncomment below line for stateful implementation of the state management
        // body: LoginScreen(),
        // uncomment below line for Global Scoped Instance for state management
        body: new LoginScreenBloc(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
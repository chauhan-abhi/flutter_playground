import 'package:flutter/material.dart';
import 'screens/login_screen_bloc.dart';
import 'screens/login_screen_scopedImpl.dart';
import 'blocs/providers.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //////////Scoped Instance Impl/////////////////
    return Provider(
      // now everything defined inside the provider 
      // can access the bloc in the provider
      child: MaterialApp(
      title: "Log Me In!",
      home: Scaffold(
        body: new LoginScreenScopedImpl(),
      ),
      debugShowCheckedModeBanner: false,
      ),
    );
  
  /////////////////Global Instance Impl/////////////////
  //   return MaterialApp(
  //     title: "Log Me In!",
  //     home: Scaffold(
  //         // uncomment below line for stateful implementation of the state management
  //       // body: LoginScreen(),
  //       // uncomment below line for Global Scoped Instance for state management
  //       body: new LoginScreenBloc(),
  //     ),
  //     debugShowCheckedModeBanner: false,
  //   );
  }
}
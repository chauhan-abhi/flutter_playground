import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreenBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          emailField(),
          passwordField(),
          Container(  
            margin: EdgeInsets.only(top: 25.0),
          ),
          submitButton(),
        ],
      ),
    );
  }

Widget emailField() {
  return StreamBuilder(
    stream: bloc.email,
    // every time stream sends an event, 
    // builder functions runs a re-renders
    // the widget on the device.
    // Snapshot: contains info of the event that
    // comes from stream
    builder: (context, snapshot) {
      return TextField(
        // onChanged: (newValue) {
        //   bloc.changeEmail(newValue);
        // },
        onChanged: bloc.changeEmail,  
        // adds data to sink
        // sink sends data to stream which sends into transormer
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'you@example.com',
          labelText: 'Email Address',
          errorText: snapshot.error,
        ),
      );
    }
  );
}

Widget passwordField() {
  return StreamBuilder(
    stream: bloc.password,
    builder: (context, snapshot) {
      return TextField(
        onChanged: bloc.changePassword,
        decoration: InputDecoration(
          hintText: 'Password',
          labelText: 'Password',
          errorText: snapshot.error,
        ),
      );
    }
  );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('Login', style: TextStyle(color: Colors.white),),
      color: Colors.blue,
      onPressed: () {},
    );
  }
}
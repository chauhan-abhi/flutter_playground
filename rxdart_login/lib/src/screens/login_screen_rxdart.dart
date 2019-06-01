import 'package:flutter/material.dart';
import '../blocs/bloc_rxdartImpl.dart';
import '../blocs/providers.dart';

class LoginScreenScopedImpl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          emailField(bloc),
          passwordField(bloc),
          Container(  
            margin: EdgeInsets.only(top: 25.0),
          ),
          submitButton(bloc),
        ],
      ),
    );
  }

Widget emailField(Bloc bloc) {
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

Widget passwordField(Bloc bloc) {
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

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.submitValid,
      // error comming from email, password field
      // will end up in shnapshot below 
      // snapshot has hasError() property --look docs
      builder: (context, snapshot) {
        return RaisedButton(
          child: Text('Login', style: TextStyle(color: Colors.white),),
          color: Colors.blue,
          onPressed: snapshot.hasError ? null: () {
            print('Submitted');
          },
        );
      }
    );
  }
}
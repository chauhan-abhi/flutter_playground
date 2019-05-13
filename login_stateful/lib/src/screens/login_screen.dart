import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            emailField(),
            passswordField(),
            //submitButton(),            
          ],
        ),
      ),
    );
  }

Widget emailField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    // for label description above the field
    // or the validation msg we get below the field.
    decoration: InputDecoration(
      labelText: 'Email Address',
      hintText: 'you@example.com',
    ),
  );
}

Widget passswordField() {
  return Container(
    margin: EdgeInsets.only(bottom: 25.0),
    child: TextFormField(
      // for **** for password
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Enter Password',
        hintText: 'Password'
      ),
    ),
  );
}

Widget submitButton() {
  return RaisedButton(
    color: Colors.blue,
    child: Text('Submit'),
    onPressed: () {},
  ); 

}

}
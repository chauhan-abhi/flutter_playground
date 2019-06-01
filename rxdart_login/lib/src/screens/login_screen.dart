import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  /**
   * to reference a widget that has been rendered
   * to a device we create a Global Key
   * and associate it with the FormState and 
   * not the Form
   */
  final formKey =GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passswordField(),
            //benifit from this approach
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton(),            
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
    validator: validateEmail,
    onSaved: (String value) {
      email = value;
    },
  );
}

Widget passswordField() {
  return TextFormField(
    // for **** for password
    obscureText: true,
    decoration: InputDecoration(
      labelText: 'Password',
      hintText: 'Enter Password'
    ),
    validator: validatePassword,
    onSaved: (String value) {
      password =value;
    },
  );
}

Widget submitButton() {
  return RaisedButton(
    color: Colors.blue,
    child: Text('Submit'),
    onPressed: () {
      if(formKey.currentState.validate()) {
        formKey.currentState.save();
        print('Time to post $email and $password to server');
      }
    },
  ); 

}

}
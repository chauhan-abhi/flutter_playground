/**
 * Stream --> Observable
 * StreamController --> Subject
 */

import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc with Validators {

  // defining the StreamController of type string and not 
  // leaving the event param as dyanamic to take any value.
  // stringent behaviour added.
  // If we have streams having multiple value types then also 
  // dart has a fn for it.
  
  
  //********************************//
  // This created a single subscription stream that is it 
  // can have only one subscriber which we cannot use here because
  // we have a new subscriber "submitValid" defined.
  // final _emailController = StreamController<String>();
  // final _passwordController = StreamController<String>(); 
  
  //So we use broadcast streams which can be listened more than once
  //final _emailController = StreamController<String>.broadcast();
  //final _passwordController = StreamController<String>.broadcast(); 

  // But if we want to access the latest item that has been added
  // to the controller, and emits that as the first item to the listener
  // we have to use a speacial StreamController
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>(); 



  // Change data
  // Return Type  |getter|shorthand-name| 
  // (optional)
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  // Add data to stream 
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);
  Stream<bool> get  submitValid =>
    Observable.combineLatest2(email, password, (e, p) => true);
  // cleanup function

  // get access to email, password in here after submit
  submit() {
    final validEmail =_emailController.value;
    final validPassword =_passwordController.value;
    print('Email is $validEmail');
    print('Password is $validPassword');
  }

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

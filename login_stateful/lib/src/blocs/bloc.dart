import 'dart:async';
import 'validators.dart';

class Bloc with Validators {

  // defining the StreamController of type string and not 
  // leaving the event param as dyanamic to take any value.
  // stringent behaviour added.
  // If we have streams having multiple value types then also 
  // dart has a fn for it.
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>(); 

  // Change data
  // Return Type  |getter|shorthand-name| 
  // (optional)
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  // Add data to stream 
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);

  // cleanup function
  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
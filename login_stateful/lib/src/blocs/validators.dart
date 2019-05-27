import 'dart:async';

class Validators {
  // dont define stream transformers as function 
  // because every time we have to call the function which will create a 
  // ST. Instead they should be resued highly.
  // Asssign them to instance variables
  //                                       input| output type of data     
  final validateEmail =StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.contains('@')) {
        sink.add(email);
      } else {
        sink.addError('Enter a valid email');
      }
    }
  );

  final validatePassword =StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if(password.length > 3) {
        sink.add(password);
      } else {
        sink.addError('Password must be atleast 4 characters');
      }
    } 
  );
}
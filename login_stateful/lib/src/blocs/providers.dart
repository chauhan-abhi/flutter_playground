import 'package:flutter/material.dart';
import 'bloc_scopedImpl.dart';

class Provider extends InheritedWidget {
  final bloc =Bloc();

  Provider({Key key, Widget child}) 
    : super(key: key, child:child);

  @override
  bool updateShouldNotify(_) => true;

  /// Build context is the handle or identifier 
  /// that locates a widged in widget hierarchy
  static  Bloc of(BuildContext context) {
    // this line of code asks the widget to look at the context
    // of its parent until it gets widget of type Provider.
    // .bloc will return  the bloc instance created on line5
    // by the provider
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }

}
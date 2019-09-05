import 'package:flutter/material.dart';
import 'home_page.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert' show json;
import 'dart:io' show Platform;

void main() async {
  List currencies = await getCurrenciesFromApi();
  print(currencies);
  runApp(new MyApp(currencies));

}

class MyApp extends StatelessWidget {
  final List _currencies;
  MyApp(this._currencies);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.pink,   
        primaryColor: Platform.isIOS ? Colors.grey[100] : null      
      ),
      home: new HomePage(_currencies),
      debugShowCheckedModeBanner: false,
    );
  }
}

Future<List> getCurrenciesFromApi() async {
    String url = "https://api.coinmarketcap.com/v1/ticker/?limit=50";
    http.Response response = await http.get(url);
    return json.decode(response.body);
  }
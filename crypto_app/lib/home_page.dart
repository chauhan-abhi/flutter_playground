import 'package:flutter/material.dart';
import 'dart:io' show Platform;



class HomePage extends StatefulWidget {
   final List currencies;
  HomePage(this.currencies);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List currencies;
  final List<MaterialColor> _colors = [Colors.blue, Colors.indigo, Colors.red];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Crpto App"),
        elevation: Platform.isIOS ? 0.0 : 5.0,
      ),
      body: _cryptoWidget(),
    );
  }

  Widget _cryptoWidget() {
    return new Container(
      child: Column(
        children: <Widget>[
          new Flexible(
            child: new ListView.builder(
              itemCount: widget.currencies.length,
              itemBuilder: (_, int index) {
                final int i = index ~/2;
                final Map currency = widget.currencies[index];
                final MaterialColor color = _colors[i % _colors.length];
                if(index.isOdd) {
                  return new Divider();
                }
                return _getListItemUi(currency, color);
              } ,
            ),
          ),
        ],
      ),
    );
  } 

  ListTile _getListItemUi(Map currency, MaterialColor color) {
    return new ListTile(
      leading: new CircleAvatar(
        backgroundColor: color,
        child: new Text(currency['name'][0], style: new TextStyle(color: Colors.white),),  // from JSON response
      ),
      title: new Text(
        currency['name'],
        style: new TextStyle(fontWeight:  FontWeight.bold),
        ),
      subtitle: _getSubtitleText(
        currency["price_usd"],
        currency['percent_change_1h']
      ),
      // title and two texts in subtitles
      isThreeLine: true,
    );
  }

  Widget _getSubtitleText(String priceUSD, String percentageChange) {
    TextSpan priceTextWidget = new TextSpan(
      text: "\$$priceUSD\n",
      style: new TextStyle(color:  Colors.black)
    );
    String percentageChangeText = "1 hour: $percentageChange%";
    TextSpan percentageChangeTextWidget;
    if(double.parse(percentageChange) > 0) {
      percentageChangeTextWidget = new TextSpan(
        text: percentageChangeText, 
        style: new TextStyle(color: Colors.green)
        );
    } else {
      percentageChangeTextWidget = new TextSpan(
        text: percentageChangeText, 
        style: new TextStyle(color: Colors.red)
        );
    }
    return new RichText(
      text: new TextSpan(
        children: [priceTextWidget, percentageChangeTextWidget]
      ),
    );
  }
}
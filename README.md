# Exploring Flutter widgets

This repository contains sample apps build while exploring flutter widgets.

## [Bottom Navigation](https://github.com/chauhan-abhi/flutter_starter_experiments/tree/master/bottom_nav)
  - Implementation of Material design Bottom Navigation Bar

<table>
  <tr><td> <b>Tab Bar</b> </td> <td> <b>Bottom Navigation</b> </td></tr>
  <tr>
<td>
  <pre> 
   @override
  void initState() {
    super.initState();
    tabController =
    new TabController(
      length: 2, 
      vsync: this);
  }
  ----------------------------
  ----------------------------
  new TabBarView(
    children: <Widget>[
    new Page("First"),
    new Page("Second")
    ],
    controller: tabController,
    ),
     </pre>
</td>
  
<td>
  <pre> 
  bottomNavigationBar:
  new Material(
    color: Colors.teal,
    child: new TabBar(
      controller: tabController,
      tabs: <Widget>[
        new Tab(
        icon: new Icon(Icons.favorite),
        ),
      new Tab(
        icon: new Icon(Icons.email),
      )
      ],
     ),
   ),
</td>  
<td>
  <img src = "https://github.com/chauhan-abhi/flutter_starter_experiments/blob/master/screenshots/Screenshot_20190928_130256_com.example.bottom_nav.jpg" width = 360>
</td>
</tr>
  </table>

## [Material Chat App](https://github.com/chauhan-abhi/flutter_starter_experiments/tree/master/material_chat)

<table>
  <tr><td> <b>List View</b> </td></tr>
  <tr>
<td>
  <pre> 
  new Column(
      children: <Widget>[
        new Flexible(
          child: new ListView.builder(
            padding: new EdgeInsets.all(8.0),
            reverse: true,
            // item builder takes buildcontext and index
            itemBuilder: (_, int index) => _messages[index],
            itemCount: _messages.length,
          ),
        ),
        new Divider(
          height: 1.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )
      ],
    );
        </pre>
</td>
<td>
  <img src = "https://github.com/chauhan-abhi/flutter_starter_experiments/blob/master/screenshots/Screenshot_20190901_123813_com.example.material_chat.jpg" width = 240>
</td>
</tr>
  </table>

## [Calculator App](https://github.com/chauhan-abhi/flutter_starter_experiments/tree/master/calculatorapp)

<table>
  <tr><td> <b>Simple app implementing +,-,*,/ features</b> </td></tr>
  <tr>
<td>
  <pre> 
   new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Enter Number 1"),
                controller: t1,
              ),
        </pre>
</td>
<td>
  <img src = "https://github.com/chauhan-abhi/flutter_starter_experiments/blob/master/screenshots/Screenshot_20190908_184414_com.example.calculatorapp.jpg" width = 240>
</td>
</tr>
  </table>
  
  

## [Network Request](https://github.com/chauhan-abhi/flutter_starter_experiments/tree/master/http_requests_flutter)
- App using flutter http module to get a list of images and load them from network inside a widget.

## [Login Design](https://github.com/chauhan-abhi/flutter_starter_experiments/tree/master/login_app_flutter)
<table>
  <tr><td> <b>- Login app UI</b> </td></tr>
  <tr>
<td>
  <pre> 
   new TextFormField(
       decoration: new InputDecoration(
       labelText: "Enter Email",
       fillColor: Colors.white),
       keyboardType: TextInputType.emailAddress,
      ),
      new TextFormField(
        decoration: new InputDecoration(
        labelText: "Enter Password"),
        keyboardType: TextInputType.text,
        obscureText: true, // show dots or star in password
      ),
       new Padding(
        padding: const EdgeInsets.only(top: 60.0),
      ),
       new MaterialButton(
        height: 50.0,
        minWidth: 150.0,
        color: Colors.teal,
        textColor: Colors.white,
        child: new Icon(
        Icons.arrow_right,
        size: 40.0,
       ),
         onPressed: () => {},
         splashColor: Colors.redAccent,
       ),
        </pre>
</td>
<td>
  <img src = "https://github.com/chauhan-abhi/flutter_starter_experiments/blob/master/screenshots/Screenshot_20190908_184550_com.abhiandroid.loginflutterapp.jpg" width = 240>
</td>
</tr>
  </table>

## [State Management using Streams](https://github.com/chauhan-abhi/flutter_starter_experiments/tree/master/login_stateful)
  - using Stateful Widgets
  - using Global Instance(BLOC pattern) 
  - using Scoped Instance(BLOC pattern)
  - using RxDart
  
  Downside of the last two approaches is complexity in merging of two streams.
  Solution: [RxDart Implementation](https://github.com/chauhan-abhi/flutter_starter_experiments/tree/master/rxdart_login)
  
## [CryptoApp](https://github.com/chauhan-abhi/flutter_starter_experiments/tree/master/crypto_app)
  - App which fetches data from [Coinmarket API](https://coinmarketcap.com/api/) and displays a list of cryptocurrencies in a   ListView
  
  <table>
  <tr><td> <b>ListView</b> </td></tr>
  <tr>
<td>
  <pre> 
  Future<List> getCurrenciesFromApi() async {
    String url = "https://api.coinmarketcap.com/v1/ticker/?limit=50";
    http.Response response = await http.get(url);
    return json.decode(response.body);
  }
        </pre>
</td>
<td>
  <img src = "https://github.com/chauhan-abhi/flutter_starter_experiments/blob/master/screenshots/Screenshot_20190908_190438_com.example.crypto_app.jpg" width = 240>
</td>
</tr>
  </table>


 ## [Stepper Widger](https://github.com/chauhan-abhi/flutter_starter_experiments/tree/master/bottom_nav)
  - Implementation of Stepper widget

<table>
  <tr><td> <b>Build Step Widget</b> <td> <b>Stepper Widget </b> </td> </td></tr>
  <tr>
<td>
  <pre> 
   List<Step> my_steps = [
    new Step(
      title: new Text(
      "Step 1"
      ),
      content: new Text(
      "Content text 1"
      ),
      isActive: true
    ),
   new Step(
      title: new Text(
      "Step 2"
      ),
      content: new Text(
      "Content text 2"
      ),
      isActive: true
      ),
   new Step(
      title: new Text(
      "Step 3"
      ),
      content: new Text(
      "Content text 3"
      ),
      isActive: true
    ),                
];
</td>

<td>
  <pre>
  new Stepper(
   steps: my_steps,
   currentStep: this.current_step,
   type: StepperType.vertical,
  ),   
   </pre>
  </td>
<td>    
<img src = "https://github.com/chauhan-abhi/flutter_starter_experiments/blob/master/screenshots/Screenshot_20190928_123759_com.example.bottom_nav.jpg" width = 240>
</td>
</tr>
  </table>
  
  
 ## [Alert Dialog](https://github.com/chauhan-abhi/flutter_starter_experiments/tree/master/bottom_nav)
  - Implementation of Alert dialog

<table>
  <tr><td> <b>Build Alert Widget</b> </td></tr>
  <tr>
<td>
  <pre> 
   AlertDialog dialog = new AlertDialog(
    content: new Text(
      "This is a dialog widget",
      style: new TextStyle(fontSize: 18.0)
    ),
    title: new Text("Diaog Title"),
  );
  ----------------------------
  ----------------------------
   onPressed: () => 
   showDialog(context: context, child: dialog),
     </pre>
</td>
<td>    
<img src = "https://github.com/chauhan-abhi/flutter_starter_experiments/blob/master/screenshots/Screenshot_20190928_123817_com.example.bottom_nav.jpg" width = 240>
</td>
</tr>
  </table>
  
  ## [Snackbar](https://github.com/chauhan-abhi/flutter_starter_experiments/tree/master/bottom_nav)
  - Implementation of Snackbar
  
<table>
  <tr><td> <b>Build Snackbar Widget</b> </td></tr>
  <tr>
<td>
  <pre> 
  onPressed: () => Scaffold.of(context)
  .showSnackBar(
    new SnackBar(
      content: new Text("File downloading started"),
      duration: new Duration(seconds: 3),
  )),

   </pre>
</td>
<td>    
<img src = "https://github.com/chauhan-abhi/flutter_starter_experiments/blob/master/screenshots/Screenshot_20190928_123900_com.example.bottom_nav.jpg" width = 240>
</td>
</tr>
  </table> 

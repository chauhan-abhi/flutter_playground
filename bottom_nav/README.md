# Nav-Bar | Dialog | SnackBar

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



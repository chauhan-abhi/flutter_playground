import 'package:flutter/material.dart';

class StepperBody extends StatelessWidget {
  int current_step = 0;
  List<Step> my_steps = [
   new Step(
            title: new Text("Step 1"),
            content: new Text("Content text 1"),
            isActive: true
          ),
   new Step(
            title: new Text("Step 2"),
            content: new Text("Content text 2"),
            isActive: true
          ),
   new Step(
            title: new Text("Step 3"),
            content: new Text("Content text 3"),
            isActive: true
          ),                
];

 @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Stepper(
        steps: my_steps,
        currentStep: this.current_step,
        type: StepperType.vertical,
        ), 
    );
  }
}

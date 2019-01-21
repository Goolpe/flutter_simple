import 'package:flutter/material.dart';

class ExampleStepper extends StatefulWidget{

  @override
  _ExampleStepperState createState() => _ExampleStepperState();
}

class _ExampleStepperState extends State<ExampleStepper>{

  int currentStep = 0;
  int _selection = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper'),
        actions: <Widget>[
          PopupMenuButton<int>(
            onSelected: (int result) { 
              setState(() {
                _selection = result;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
              PopupMenuItem<int>(
                value: 0,
                child: Text('Vertical (default)'),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text('Horizontal'),
              ),
            ],
          )
        ],
      ),
      body: Stepper(
        currentStep: currentStep,
        type: _selection == 0 ? StepperType.vertical : StepperType.horizontal,
        steps:  [
          Step(
            title: Text("Step one"),
            content: Text("One!"),
            isActive: true),
          Step(
            title: Text("Step two"),
            content: Text("Two!"),
            isActive: true),
          Step(
            title: Text("Step three"),
            content: Text("Three!"),
            isActive: true),
        ],
        onStepTapped: (step) {
          setState(() {
            currentStep = step;
          });
        },
        onStepCancel: () {
          setState(() {
            if (currentStep > 0) {
              currentStep = currentStep - 1;
            } else {
              currentStep = 0;
            }
          });
        },
        onStepContinue: () {
          setState(() {
            //if current step lesser then list steps length
            if (currentStep < 2) {
              currentStep = currentStep + 1;
            } else {
              currentStep = 0;
            }
          });
        },
        controlsBuilder: (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: FlatButton(
                  child: Text('Next', style: TextStyle(color: Colors.green)),
                  onPressed: onStepContinue,
                ),
              ),
              Container(
                child: FlatButton(
                  child: Text('Back', style: TextStyle(color: Colors.red)),
                  onPressed: onStepCancel,
                ),
              ),
            ],
          );
        },
      )
    );
  }
}
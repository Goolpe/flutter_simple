import 'package:flutter/material.dart';

class ExampleSelections extends StatefulWidget{
  @override
   _ExampleSelectionsState createState() =>  _ExampleSelectionsState();
}

class _ExampleSelectionsState extends State<ExampleSelections>{

  bool _checkboxValue = true;
  int _radioValue = 0;
  bool  _switchValue = true;
  double _sliderValue = 0.5;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Selections'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            trailing: Checkbox(
              value: _checkboxValue,
              onChanged: (bool newValue){
                setState((){
                  _checkboxValue = newValue;
                });
              },
            ),
            title: Text('Checkbox')
          ),
          Divider(),
          ListTile(
            trailing: Radio<int>(
              value: 0,
              groupValue: _radioValue,
              onChanged: (int newValue){
                setState((){
                  _radioValue = newValue;
                });
              },
            ),
            title: Text('Radio one')
          ),
          ListTile(
            trailing: Radio<int>(
              value: 1,
              groupValue: _radioValue,
              onChanged: (int newValue){
                setState((){
                  _radioValue = newValue;
                });
              },
            ),
            title: Text('Radio two')
          ),
          ListTile(
            trailing: Radio<int>(
              value: 2,
              groupValue: _radioValue,
              onChanged: (int newValue){
                setState((){
                  _radioValue = newValue;
                });
              },
            ),
            title: Text('Radio three')
          ),
          Divider(),
          ListTile(
            trailing: Switch(
              value: _switchValue,
              onChanged: (bool newValue){
                setState(() {
                   _switchValue = newValue;
                });
              },
            ),
            title: Text('Switch')
          ),
          Divider(),
          ListTile(
            title: Text('Slider')
          ),
          Slider(
            value: _sliderValue,
            onChanged: (double newValue){
              setState(() {
                  _sliderValue = newValue;
              });
            },
          ),
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';

class ExampleGridView extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.count'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            color: Colors.green,
            child: Text('First')
          ), 
          Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: Text('Second')
          ), 
          Container(
            alignment: Alignment.center,
            color: Colors.yellow,
            child: Text('Third')
          ), 
          Container(
            alignment: Alignment.center,
            color: Colors.orange,
            child: Text('Fourth')
          ), 
          Container(
            alignment: Alignment.center,
            color: Colors.indigo,
            child: Text('Fifth')
          ), 
          Container(
            alignment: Alignment.center,
            color: Colors.amber,
            child: Text('Sixth')
          ), 
          Container(
            alignment: Alignment.center,
            color: Colors.lightBlue,
            child: Text('Seventh')
          ), 
          Container(
            alignment: Alignment.center,
            color: Colors.greenAccent,
            child: Text('Eighth')
          ), 
        ],
      )  
    );
  }
}
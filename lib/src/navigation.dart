import 'package:flutter/material.dart';

class Navigation extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter navigation'),
        ),
        body: TabBarView(
          children: <Widget>[
            Tab(
              child: Text('First screen'),
            ),
            Tab(
              child: Text('Second screen'),
            ),
            Tab(
              child: Text('Third screen'),
            )
          ],
        ),
        bottomNavigationBar: TabBar(
          labelPadding: EdgeInsets.all(10),
          labelColor: Colors.blue,
          labelStyle: TextStyle(fontSize: 10),
          tabs: <Widget>[
            Tab(
              text: "First",
              icon: Icon(Icons.looks_one),
            ),
            Tab(
              text: "Second",
              icon: Icon(Icons.looks_two),
            ),
            Tab(
              text: "Third",
              icon: Icon(Icons.looks_3),
            ),
          ],
        ),
      )
    );
  }
}
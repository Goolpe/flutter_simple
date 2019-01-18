import 'package:flutter/material.dart';

class NavigationTopTabBar extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Navigation Top Tab Bar'),
          bottom: TabBar(
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
              Tab(
                text: "Fourth",
                icon: Icon(Icons.looks_4),
              ),
              Tab(
                text: "Fifth",
                icon: Icon(Icons.looks_5),
              ),
            ],
          ),
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
            ),
            Tab(
              child: Text('Fourth screen'),
            ),
            Tab(
              child: Text('Fifth screen'),
            )
          ],
        ),
      )
    );
  }
}
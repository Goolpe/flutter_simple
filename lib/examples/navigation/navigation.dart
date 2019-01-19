import 'package:flutter/material.dart';
import 'package:flutter_simple/examples/navigation/exampleBottomTabBar.dart';
import 'package:flutter_simple/examples/navigation/exampleBottomAppBar.dart';
import 'package:flutter_simple/examples/navigation/exampleBottomNavigationBar.dart';
import 'package:flutter_simple/examples/navigation/exampleTopTabBar.dart';

class Navigation extends StatelessWidget{

  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Flutter navigations'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.border_bottom),
              title: Text('Bottom TabBar'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExampleBottomTabBar()));
              },
            ),
            ListTile(
              leading: Icon(Icons.border_top),
              title: Text('Top TabBar'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExampleTopTabBar()));
              },
            ),
            ListTile(
              leading: Icon(Icons.border_bottom),
              title: Text('BottomNavigationBar'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExampleBottomNavigationBar()));
              },
            ),
            ListTile(
              leading: Icon(Icons.border_bottom),
              title: Text('BottomAppBar'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExampleBottomAppBar()));
              },
            )
          ],
        )
    );
  }
}
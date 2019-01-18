import 'package:flutter/material.dart';
import 'package:flutter_simple/examples/navigation/navigationBottomTabBar.dart';
import 'package:flutter_simple/examples/navigation/navigationTopTabBar.dart';

class Navigation extends StatelessWidget{

  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Flutter navigation'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.border_bottom),
              title: Text('Navigation Bottom TabBar'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationBottomTabBar()));
              },
            ),
            ListTile(
              leading: Icon(Icons.border_top),
              title: Text('Navigation Top TabBar'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationTopTabBar()));
              },
            )
          ],
        )
    );
  }
}
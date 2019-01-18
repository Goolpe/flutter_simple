import 'package:flutter/material.dart';
import 'package:flutter_simple/examples/navigation/navigationBottomTabBar.dart';

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
              leading: Icon(Icons.minimize),
              title: Text('Navigation bottom tab bar'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationBottomTabBar()));
              },
            )
          ],
        )
    );
  }
}
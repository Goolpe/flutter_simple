import 'package:flutter/material.dart';
import 'package:flutter_simple/examples/navigation/index.dart';
import 'package:flutter_simple/examples/lists/index.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Flutter is awesome'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.view_carousel),
              title: Text('Navigation'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Navigation()));
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Lists'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Lists()));
              },
            )
          ],
        )
    );
  }
}
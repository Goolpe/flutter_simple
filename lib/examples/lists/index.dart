import 'package:flutter/material.dart';
import 'package:flutter_simple/examples/lists/exampleListView.dart';
import 'package:flutter_simple/examples/lists/exampleListViewBuilder.dart';

class Lists extends StatelessWidget{

  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Flutter lists'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('ListView'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExampleListView()));
              },
            ),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('ListView.builder'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExampleListViewBuilder()));
              },
            ),
          ],
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_simple/examples/lists/exampleListView.dart';
import 'package:flutter_simple/examples/lists/exampleListViewBuilder.dart';
import 'package:flutter_simple/examples/lists/exampleListViewSeparated.dart';
import 'package:flutter_simple/examples/lists/exampleGridView.dart';

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
              leading: Icon(Icons.view_day),
              title: Text('ListView.builder'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExampleListViewBuilder()));
              },
            ),
            ListTile(
              leading: Icon(Icons.view_headline),
              title: Text('ListView.separated'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExampleListViewSeparated()));
              },
            ),
            ListTile(
              leading: Icon(Icons.view_module),
              title: Text('GridView'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExampleGridView()));
              },
            ),
          ],
        )
    );
  }
}
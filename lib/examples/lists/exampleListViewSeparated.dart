import 'package:flutter/material.dart';

class ExampleListViewSeparated extends StatelessWidget{
  final items = List<String>.generate(100, (i) => "Title $i");

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.separated'),
      ),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      )  
    );
  }
}
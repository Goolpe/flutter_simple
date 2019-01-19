import 'package:flutter/material.dart';

class ExampleListViewBuilder extends StatelessWidget{
  // final List<String> items = ['First title', 'Second title','Third title', 'Fourth title','Fifth title'];
  final items = List<String>.generate(100, (i) => "Title $i");

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      )  
    );
  }
}
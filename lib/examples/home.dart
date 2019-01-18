import 'package:flutter/material.dart';
import 'package:flutter_simple/examples/navigation/navigation.dart';

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
              leading: Icon(Icons.clear_all),
              title: Text('Navigation'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Navigation()));
              },
            )
          ],
        )
    );
  }
}
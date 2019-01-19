import 'package:flutter/material.dart';

class ExampleListView extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.looks_one),
            title: Text('First title'),
            subtitle: Text('first subtitle'),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: (){},),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.looks_two),
            title: Text('Second title'),
            subtitle: Text('second subtitle'),
            trailing: Text('2020/11/02'),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.looks_3),
            title: Text('Third title'),
            subtitle: Text('third subtitle'),
            trailing: Switch(
              value: true,
              onChanged: (bool value){
                //for change data you need to create state
                //setState((){
                //  value1 = value;
                //})
                value = !value;
              }),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.looks_4),
            title: Text('Fourth title'),
            subtitle: Text('fourth subtitle'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.looks_5),
            title: Text('Fifth title'),
            subtitle: Text('fifth subtitle'),
            onTap: (){},
          )
        ],
      )
    );
  }
}
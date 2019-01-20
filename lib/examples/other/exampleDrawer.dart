import 'package:flutter/material.dart';

class ExampleDrawer extends StatefulWidget{
  @override
  _ExampleDrawerState createState() => _ExampleDrawerState();
}

class _ExampleDrawerState extends State<ExampleDrawer>{
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){
                _scaffoldKey.currentState.openDrawer();
              },
            ),
            Text('Drawer')
          ]
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: <Widget>[
              ListTile(
                trailing: Icon(Icons.close),
                title: Text('Close drawer'),
                onTap: (){
                  _scaffoldKey.currentState.openEndDrawer();
                },
              ),
              ListTile(
                leading: Icon(Icons.looks_one),
                title: Text('one')
              ),
              ListTile(
                leading: Icon(Icons.looks_two),
                title: Text('two')
              ),
              ListTile(
                leading: Icon(Icons.looks_3),
                title: Text('three')
              )
            ],
          )
        ),
      ),
      body: ListTile(
        leading: Icon(Icons.chevron_left),
        title: Text('Open drawer'),
        onTap: (){
          _scaffoldKey.currentState.openDrawer();
        },
      ),
    );
  }
}
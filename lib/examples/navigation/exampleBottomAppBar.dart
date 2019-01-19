import 'package:flutter/material.dart';

class ExampleBottomAppBar extends StatefulWidget{

  @override
  _ExampleBottomAppBarState createState() => _ExampleBottomAppBarState();
}

class _ExampleBottomAppBarState extends State<ExampleBottomAppBar>{

  int _selectedIndex = 0;

  final _screens = [
    Text('First screen'),
    Text('Add screen'),
    Text('Third screen'),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomAppBar'),
      ),
      body: Center(
        child: _screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.looks_one, color: Colors.white),
              onPressed: (){
                _onTabTapped(0);
              }
            ),
            IconButton(
              icon: Icon(Icons.looks_3, color: Colors.white),
              onPressed: (){
                _onTabTapped(2);
              }
            ),
          ],
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _onTabTapped(1);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
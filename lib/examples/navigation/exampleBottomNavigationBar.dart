import 'package:flutter/material.dart';

class ExampleBottomNavigationBar extends StatefulWidget {
  
 @override
 _ExampleBottomNavigationBarState createState() => _ExampleBottomNavigationBarState();
}

class _ExampleBottomNavigationBarState extends State<ExampleBottomNavigationBar>{

  int _selectedIndex = 0;

  final _screens = [
    Text('First screen'),
    Text('Second screen'),
    Text('Third screen'),
    Text('Fourth screen'),
    Text('Fifth screen'),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('BottomNavigationBar'),
        ),
        body: Center(
          child: _screens.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            //background color
            canvasColor: Colors.white,

            //active item color
            primaryColor: Colors.red,

            //inactive item color
            textTheme: Theme
                .of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.blue)),
          ),
          child: BottomNavigationBar(
            //type important for icon and text color
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.looks_one), title: Text('First')),
              BottomNavigationBarItem(icon: Icon(Icons.looks_two), title: Text('Second')),
              BottomNavigationBarItem(icon: Icon(Icons.looks_3), title: Text('Third')),
              BottomNavigationBarItem(icon: Icon(Icons.looks_4), title: Text('Fourth')),
              BottomNavigationBarItem(icon: Icon(Icons.looks_5), title: Text('Fifth')),
            ],
            currentIndex: _selectedIndex,
            onTap: _onTabTapped,
          )
        ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
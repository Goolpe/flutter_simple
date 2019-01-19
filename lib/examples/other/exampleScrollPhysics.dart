import 'package:flutter/material.dart';

class ExampleScrollPhysics extends StatefulWidget{

  @override
  _ExampleScrollPhysicsState createState() => _ExampleScrollPhysicsState();
}

class _ExampleScrollPhysicsState extends State<ExampleScrollPhysics>{
  final items = List<String>.generate(100, (i) => "Title $i");

  final List<ScrollPhysics> _scrollPhysics = [ ClampingScrollPhysics(), BouncingScrollPhysics(), FixedExtentScrollPhysics(), NeverScrollableScrollPhysics()];
  
  int _selection = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollPhysics'),
        actions: <Widget>[
          PopupMenuButton<int>(
            onSelected: (int result) { 
              setState(() {
                _selection = result;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
              PopupMenuItem<int>(
                value: 0,
                child: Text('Clamping scroll (default)'),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text('Bouncing scroll'),
              ),
              PopupMenuItem<int>(
                value: 2,
                child: Text('Fixed extent scroll'),
              ),
              PopupMenuItem<int>(
                value: 3,
                child: Text('Never scrollable scroll'),
              ),
            ],
          )
        ],
      ),
      body: ListView.builder(
        physics: _scrollPhysics[_selection],
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
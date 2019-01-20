import 'package:flutter/material.dart';

class ExampleButtons extends StatelessWidget{

  final String _selectedValue = 'one';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        actions: <Widget>[
          //uncomment to add popupmenu in appbar
          // PopupMenuButton<int>(
          //   onSelected: (int result) { 
          //   },
          //   itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
          //     PopupMenuItem<int>(
          //       value: 0,
          //       child: Text('one'),
          //     ),
          //     PopupMenuItem<int>(
          //       value: 1,
          //       child: Text('two'),
          //     ),
          //     PopupMenuItem<int>(
          //       value: 2,
          //       child: Text('four'),
          //     ),
          //     PopupMenuItem<int>(
          //       value: 3,
          //       child: Text('five'),
          //     ),
          //   ],
          // )
        ]
      ),
      body: ListView(
        children: <Widget>[
          
          //popupmenu button
          ListTile(
            trailing: PopupMenuButton<int>(
              onSelected: (int result) { 
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
                PopupMenuItem<int>(
                  value: 0,
                  child: Text('one'),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('two'),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text('three'),
                ),
                PopupMenuItem<int>(
                  value: 3,
                  child: Text('four'),
                ),
              ],
            ),
            title: Text('PopupMenu button'),
          ),

          //icon button
          ListTile(
            trailing: IconButton(
              color: Colors.red,
              icon: Icon(Icons.favorite),
              onPressed: (){},
            ),
            title: Text('Icon button'),
          ),

          //raised button
          ListTile(
            trailing: RaisedButton(
              color: Colors.orange,
              child: Icon(Icons.favorite, color: Colors.red),
              onPressed: (){},
            ),
            title: Text('Raised button'),
          ),

          //flat button
          ListTile(
            trailing: FlatButton(
              child: Text('Tap'),
              onPressed: (){},
            ),
            title: Text('Flat button'),
          ),

          //FAB button
          ListTile(
            trailing: FloatingActionButton(
              //important if several FAB
              heroTag: "btn1",
              backgroundColor: Colors.green,
              child: Text('Tap'),
              onPressed: (){},
            ),
            title: Text('Floating action button'),
            subtitle: Text('(FAB)'),
          ),

          //FAB button
          ListTile(
            trailing: FloatingActionButton.extended(
              //important if several FAB
              heroTag: "btn2",
              icon: Icon(Icons.favorite_border),
              label: Text('Tap'),
              onPressed: (){},
            ),
            title: Text('Floating action button'),
            subtitle: Text('(FAB) with icon'),
          ),

          //dropdown button
          ListTile(
            trailing: DropdownButton<String>(
              items: <String>['one', 'two', 'three'].map((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: _selectedValue,
              onChanged: (_){},
            ),
            title: Text('Dropdown button'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        //important if several FAB
        heroTag: "btn3",
        icon: Icon(Icons.favorite_border),
        label: Text('(FAB) with float location'),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
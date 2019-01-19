import 'package:flutter/material.dart';

class ExampleSliverList extends StatelessWidget{
  final items = List<String>.generate(20, (i) => "Title $i");

  @override
  Widget build(BuildContext context){
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('SliverList'),
          backgroundColor: Colors.green,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            background: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset(0.5, 0.6),
                    end: FractionalOffset(0.5, 1.0),
                    colors: [
                      Colors.green, 
                      Colors.blue
                    ]
                )
              )
            )
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
            return Text('${items[index]}');
          },
          childCount: items.length,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 150.0,
          delegate: SliverChildListDelegate(
            [
              Container(
                child: Text('First'), 
                color: Colors.red
              ),
              Container(
                child: Text('Second'), 
                color: Colors.yellow
              ),
              Container(
                child: Text('Third'), 
                color: Colors.amber
              ),
              Container(
                child: Text('Fourth'), 
                color: Colors.lightBlue
              ),
              Container(
                child: Text('Fifth'), 
                color: Colors.orangeAccent
              ),
            ],
          ),
        ),
      ],
    );
  }
}
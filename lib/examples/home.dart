import 'package:flutter/material.dart';
import 'package:flutter_simple/examples/lists/exampleListView.dart';
import 'package:flutter_simple/examples/lists/exampleListViewBuilder.dart';
import 'package:flutter_simple/examples/lists/exampleListViewSeparated.dart';
import 'package:flutter_simple/examples/lists/exampleGridView.dart';
import 'package:flutter_simple/examples/lists/exampleSliverList.dart';

import 'package:flutter_simple/examples/navigation/exampleBottomTabBar.dart';
import 'package:flutter_simple/examples/navigation/exampleBottomAppBar.dart';
import 'package:flutter_simple/examples/navigation/exampleBottomNavigationBar.dart';
import 'package:flutter_simple/examples/navigation/exampleTopTabBar.dart';

import 'package:flutter_simple/examples/other/exampleScrollPhysics.dart';
import 'package:flutter_simple/examples/other/exampleButtons.dart';
import 'package:flutter_simple/examples/other/exampleTextFormFields.dart';
import 'package:flutter_simple/examples/other/exampleDrawer.dart';
import 'package:flutter_simple/examples/other/exampleSelections.dart';
import 'package:flutter_simple/examples/other/exampleStepper.dart';

class Home extends StatelessWidget{

  final List<List> items = [
    ["List"],
    ["Bottom TabBar",  ExampleBottomTabBar(), Icons.border_bottom],
    ["Top TabBar",  ExampleTopTabBar(), Icons.border_top],
    ["Bottom NavigationBar",  ExampleBottomNavigationBar(), Icons.border_bottom],
    ["Bottom AppBar",  ExampleBottomAppBar(), Icons.border_bottom],
    ["Navigation"],
    ["ListView",  ExampleListView(), Icons.view_list],
    ["ListView.builder", ExampleListViewBuilder(), Icons.view_day],
    ["ListView.separated",  ExampleListViewSeparated(), Icons.view_headline],
    ["GridView",  ExampleGridView(), Icons.view_module],
    ["SliverView",  ExampleSliverList(), Icons.view_module],
    ["Other"],
    ["Buttons",  ExampleButtons(), Icons.crop_16_9],
    ["Drawer",  ExampleDrawer(), Icons.menu],
    ["Selections", ExampleSelections(), Icons.select_all],
    ["ScrollPhysics",  ExampleScrollPhysics(), Icons.touch_app],
    ["Stepper",  ExampleStepper(), Icons.linear_scale],
    ["TextFormFields",  ExampleTextFormFields(), Icons.text_fields]
  ];

  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Flutter is awesome'),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            if (item.length == 1) {
              return ListTile(
                title: Text(item[0], style: TextStyle(color: Colors.green),),
              );
            } else{
              return ListTile(
                leading: Icon(item[2]),
                title: Text(item[0]),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => item[1]));
                },
              );
            }
          },
        ),
    );
  }
}
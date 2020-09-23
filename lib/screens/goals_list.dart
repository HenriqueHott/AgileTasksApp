import 'package:Agile_Tasks_App/components/list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoalsList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Goals')
        ),
        body: ListView(children: [
          ListItem()
        ],)
    );
  }
}
import 'package:Agile_Tasks_App/models/goal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../types.dart';

class GoalItem extends StatelessWidget {
  GoalItem({@required this.goal, @required this.onPressed}) : super();

  final Goal goal;
  final TitlePressedCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).accentColor,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 4.0, 0, 4.0),
                child: Text(
                  goal.title,
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 4.0, 0, 4.0),
                child: Text(
                  goal.description,
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10.0, 0, 4.0),
                child: Text(
                  'Task Progress: x/${goal.tasks.toString()}',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                child: LinearProgressIndicator(
                  value: 0.333,
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).primaryColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

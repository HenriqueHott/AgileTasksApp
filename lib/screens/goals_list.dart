import 'package:Agile_Tasks_App/components/goal_item.dart';
import 'package:Agile_Tasks_App/models/goal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forms/goal_form.dart';

class GoalsList extends StatefulWidget {
  @override
  _GoalsListState createState() => _GoalsListState();
}

class _GoalsListState extends State<GoalsList> {
  List<Goal> goals = [];

  void _handleNewGoalTap(BuildContext context) async {
    final Goal newGoal = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => GoalForm()));

    if (newGoal is Goal) {
      setState(() {
        goals.add(newGoal);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Goals')),
      body: Padding(
        padding: EdgeInsets.all(4.0),
        child: ListView(
          children: goals.isNotEmpty
              ? goals
                  .map((it) => Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                        child: GoalItem(onPressed: () {}, goal: it),
                      ))
                  .toList()
              : [
                  Text(
                    'The goals list is empty.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.0),
                  )
                ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => _handleNewGoalTap(context),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Theme.of(context).primaryColor),
    );
  }
}

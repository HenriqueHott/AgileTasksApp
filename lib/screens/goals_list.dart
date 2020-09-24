import 'package:Agile_Tasks_App/components/goal_item.dart';
import 'package:Agile_Tasks_App/models/goal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forms/goal_form.dart';

class GoalsList extends StatelessWidget {
  
  void _handleNewGoalTap(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => GoalForm()));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Goals')),
      body: Padding(
        padding: EdgeInsets.all(4.0),
        child: ListView(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                child: GoalItem(
                  onPressed: () {},
                  goal: Goal(
                      title: 'Became a LoLzinho pro player',
                      description:
                          'Irure do officia ex dolore culpa qui do do culpa quis fugiat. Amet voluptate aliqua ut laborum laborum laboris do mollit ex aliquip nulla adipisicing in. Mollit est commodo exercitation proident non velit veniam deserunt. Irure deserunt reprehenderit nisi ad commodo ea aute ea proident commodo aliquip exercitation cillum. Ad culpa id magna nisi sit incididunt ea eiusmod ullamco consequat non. In aute laborum esse dolore ullamco consequat sint consectetur ea quis velit.',
                      tasks: 10),
                )),
            Container(
                margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                child: GoalItem(
                  onPressed: () {},
                  goal: Goal(
                      title: 'Leave EXTREME GO HORSE behind',
                      description:
                          'In duis ad cupidatat quis. Lorem consequat non irure nostrud minim laborum ad eiusmod magna occaecat anim incididunt ut ipsum. Id consequat nisi veniam ad commodo eiusmod magna. Irure mollit eiusmod et adipisicing et veniam ad ad enim excepteur est qui ex dolore. Esse irure nisi cupidatat consectetur ut incididunt eu proident consectetur adipisicing.',
                      tasks: 10),
                )),
            Container(
                margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                child: GoalItem(
                  onPressed: () {},
                  goal: Goal(
                      title: 'Get a full-time job',
                      description:
                          'Commodo est adipisicing amet ad commodo duis dolore esse magna aliqua occaecat minim occaecat nostrud. Irure aliqua et tempor voluptate ex officia ipsum veniam in tempor quis ad ipsum. Mollit deserunt laborum mollit non cupidatat culpa incididunt minim incididunt aliqua ullamco aliquip culpa.',
                      tasks: 10),
                )),
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

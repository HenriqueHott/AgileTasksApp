import 'package:Agile_Tasks_App/models/goal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoalForm extends StatefulWidget {
  @override
  _GoalFormState createState() => _GoalFormState();
}

class _GoalFormState extends State<GoalForm> {
  TextEditingController titleController = new TextEditingController();
  TextEditingController numTasksController = new TextEditingController();
  TextEditingController descriptionController = new TextEditingController();

  void handleSubmit() {
    final Goal newGoal = Goal(
        title: titleController.text,
        tasks: int.parse(numTasksController.text),
        description: descriptionController.text);
        
    Navigator.of(context).pop(newGoal);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New Goal'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12.0),
                  child: TextField(
                    controller: titleController,
                    maxLength: 20,
                    decoration: InputDecoration(
                        labelText: 'Title',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                        focusColor: Theme.of(context).primaryColor),
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12.0),
                  child: TextField(
                    controller: numTasksController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'Number of tasks',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                        focusColor: Theme.of(context).primaryColor),
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12.0),
                  child: TextField(
                    controller: descriptionController,
                    maxLines: 5,
                    maxLength: 150,
                    textAlign: TextAlign.justify,
                    decoration: InputDecoration(
                      labelText: 'Description',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(),
                      focusColor: Theme.of(context).primaryColor,
                    ),
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                ButtonTheme(
                    minWidth: 150,
                    padding: EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: handleSubmit,
                    ))
              ],
            ),
          ),
        ));
  }
}

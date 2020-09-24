import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoalForm extends StatelessWidget {
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
                    child: Text('Submit', style: TextStyle(
                    color: Colors.white
                  ),), onPressed: () {}),
                )
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/cupertino.dart';

class Goal {
  Goal({@required this.title, @required this.description, @required this.tasks }) : assert(tasks <= 9);
  
  final String title;
  final String description;
  final int tasks;// This will be List<Task> in next updates
}
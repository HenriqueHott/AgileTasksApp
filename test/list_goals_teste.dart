import 'package:Agile_Tasks_App/components/grid_item.dart';
import 'package:Agile_Tasks_App/main.dart';
import 'package:Agile_Tasks_App/screens/forms/goal_form.dart';
import 'package:Agile_Tasks_App/screens/goals_list.dart';
import 'package:Agile_Tasks_App/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test to validate goals lists widget.',
      (WidgetTester tester) async {
    // find home page
    await tester.pumpWidget(MaterialApp(home: GoalsList(),));
        final homePage = find.byType(GoalsList);
        expect(homePage, findsOneWidget);


      });
    }

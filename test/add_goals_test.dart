import 'package:Agile_Tasks_App/components/grid_item.dart';
import 'package:Agile_Tasks_App/main.dart';
import 'package:Agile_Tasks_App/screens/forms/goal_form.dart';
import 'package:Agile_Tasks_App/screens/goals_list.dart';
import 'package:Agile_Tasks_App/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test to validate the creation of a goal(without persistence).',
      (WidgetTester tester) async {
    // find home page
    await tester.pumpWidget(MyApp());
    final homePage = find.byType(HomePage);
    expect(homePage, findsOneWidget);

    // Find Goal grid item
    final featureItem = find.byWidgetPredicate(
        (Widget widget) => widget is GridItem && widget.itemName == "Goals");
    expect(featureItem, findsOneWidget);

    // enter in goals list screen
    await tester.tap(featureItem);
    await tester.pumpAndSettle();
    final goalList = find.byType(GoalsList);
    expect(goalList, findsOneWidget);

    // find fab
    final fab = find.widgetWithIcon(FloatingActionButton, Icons.add);
    expect(fab, findsOneWidget);
    
    // enter in goals list screen
    await tester.tap(fab);
    await tester.pumpAndSettle();

    final goalForm = find.byType(GoalForm);
    expect(goalForm, findsOneWidget);
  });
}

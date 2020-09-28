import 'package:Agile_Tasks_App/components/grid_item.dart';
import 'package:Agile_Tasks_App/main.dart';
import 'package:Agile_Tasks_App/screens/forms/goal_form.dart';
import 'package:Agile_Tasks_App/screens/goals_list.dart';
import 'package:Agile_Tasks_App/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
      'Test to validate the assertion number of tasks in goal creation flux(without persistence).',
      (WidgetTester tester) async => createTestCase(
          tester,
          'titulo',
          '50',
          'Ullamco nulla excepteur ut ad cillum. Elit sunt reprehenderit amet enim ea Lorem deserunt dolore quis et sint ex enim. Quis eiusmod adipisicing adipisicing tempor commodo sunt excepteur id incididunt minim ipsum. Anim ea ea elit deserunt ad pariatur consequat quis nisi adipisicing tempor.',
          isInstanceOf<AssertionError>()));

    testWidgets(
      'Test to validate non-number value to number of tasks field in goal creation flux(without persistence).',
      (WidgetTester tester) async => createTestCase(
          tester,
          'titulo',
          'aaaa',
          'Ullamco nulla excepteur ut ad cillum. Elit sunt reprehenderit amet enim ea Lorem deserunt dolore quis et sint ex enim. Quis eiusmod adipisicing adipisicing tempor commodo sunt excepteur id incididunt minim ipsum. Anim ea ea elit deserunt ad pariatur consequat quis nisi adipisicing tempor.',
          isInstanceOf<Exception>()));
    
      testWidgets(
      'Test to validate good way in goal creation flux(without persistence).',
      (WidgetTester tester) async => createTestCase(
          tester,
          'titulo',
          '9',
          'Ullamco nulla excepteur ut ad cillum. Elit sunt reprehenderit amet enim ea Lorem deserunt dolore quis et sint ex enim. Quis eiusmod adipisicing adipisicing tempor commodo sunt excepteur id incididunt minim ipsum. Anim ea ea elit deserunt ad pariatur consequat quis nisi adipisicing tempor.',
          isInstanceOf<Null>()));
}


void createTestCase(WidgetTester tester, String titleText, String numTasksText,
    String descriptionText, Matcher matcher) async {
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

  // get form fields
  final textFields = find.byType(TextField);
  expect(textFields, findsNWidgets(3));

  final titleField = find.byWidgetPredicate((widget) =>
      widget is TextField && widget.decoration.labelText == "Title");
  final numTasksField = find.byWidgetPredicate((widget) =>
      widget is TextField && widget.decoration.labelText == "Number of tasks");
  final descriptionField = find.byWidgetPredicate((widget) =>
      widget is TextField && widget.decoration.labelText == "Description");
  expect(titleField, findsOneWidget);
  expect(numTasksField, findsOneWidget);
  expect(descriptionField, findsOneWidget);

  // set data on forms and submit
  await tester.enterText(titleField, titleText);
  await tester.enterText(numTasksField, numTasksText);
  await tester.enterText(descriptionField, descriptionText);
  final submitButton = find.byType(RaisedButton);
  expect(submitButton, findsOneWidget);

  await tester.tap(submitButton);
  expect(tester.takeException(), matcher);

  }

import 'package:Agile_Tasks_App/models/goal.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test correct creation of a Goal', (){
    expect(Goal(
     title: "Title",
     description: "Amet commodo occaecat ut eu do anim labore sint. Et ullamco officia culpa elit veniam. Amet minim est consequat adipisicing adipisicing ullamco ad incididunt ut dolor exercitation. Mollit incididunt ut anim irure non. Sint qui qui veniam quis esse Lorem aliqua deserunt cupidatat eiusmod exercitation Lorem sit. Anim dolore eiusmod enim incididunt sunt laboris proident anim. Culpa ea eu mollit enim et.",
     tasks: 5
    ), isInstanceOf<Goal>());
  });

    test('Test of non-number value for tasks', (){
    expect(() =>  Goal(
     title: "Title",
     description: "Amet commodo occaecat ut eu do anim labore sint. Et ullamco officia culpa elit veniam. Amet minim est consequat adipisicing adipisicing ullamco ad incididunt ut dolor exercitation. Mollit incididunt ut anim irure non. Sint qui qui veniam quis esse Lorem aliqua deserunt cupidatat eiusmod exercitation Lorem sit. Anim dolore eiusmod enim incididunt sunt laboris proident anim. Culpa ea eu mollit enim et.",
     tasks: int.parse('aaaa')
    ) , throwsException);
  });
  
  test('Test of greater value for tasks', (){
    expect(() =>  Goal(
     title: "Title",
     description: "Amet commodo occaecat ut eu do anim labore sint. Et ullamco officia culpa elit veniam. Amet minim est consequat adipisicing adipisicing ullamco ad incididunt ut dolor exercitation. Mollit incididunt ut anim irure non. Sint qui qui veniam quis esse Lorem aliqua deserunt cupidatat eiusmod exercitation Lorem sit. Anim dolore eiusmod enim incididunt sunt laboris proident anim. Culpa ea eu mollit enim et.",
     tasks: 15
    ) , throwsAssertionError);
  });

}
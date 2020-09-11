import 'package:Agile_Tasks_App/components/grid_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> _featuresNames = [
    "Daily tasks",
    "Goals",
    "Manage",
    "Overview"
  ];

  final Function _handleFeaturePressed = () {
    debugPrint("sucess");
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Agile Tasks App'),
        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 2,
            children: _featuresNames
                .map((e) =>
                    GridItem(itemName: e, onPressed: _handleFeaturePressed))
                .toList(),
          ),
        ));
  }
}

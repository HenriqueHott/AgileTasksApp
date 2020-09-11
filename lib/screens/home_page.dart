import 'package:Agile_Tasks_App/components/grid_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _FeatureItem {
  _FeatureItem({@required this.name, @required this.icon});

  final String name;
  final Icon icon;
}

class HomePage extends StatelessWidget {
  final List<_FeatureItem> _featuresItems = [
    _FeatureItem(
        name: "Daily Tasks",
        icon: Icon(
          Icons.schedule,
          size: 75.0,
          color: Colors.white,
        )),
    _FeatureItem(
        name: "Goals",
        icon: Icon(
          Icons.check,
          size: 75.0,
          color: Colors.white,
        )),
    _FeatureItem(
        name: "Manage",
        icon: Icon(
          Icons.card_travel,
          size: 75.0,
          color: Colors.white,
        )),
    _FeatureItem(
        name: "OverView",
        icon: Icon(
          Icons.star_border,
          size: 75.0,
          color: Colors.white,
        )),
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
            children: _featuresItems
                .map((it) => GridItem(
                    itemName: it.name,
                    icon: it.icon,
                    onPressed: _handleFeaturePressed))
                .toList(),
          ),
        ));
  }
}

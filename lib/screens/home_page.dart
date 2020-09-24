import 'package:Agile_Tasks_App/components/grid_item.dart';
import 'package:Agile_Tasks_App/screens/goals_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _FeatureItem {
  _FeatureItem({@required this.name, @required this.icon, this.featurePage});
  final String name;
  final Icon icon;
  final Widget featurePage;
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
        featurePage: GoalsList(),
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

  void handlePageChange(BuildContext context, Widget widget) {
    if (widget != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => widget));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agile Tasks App'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.fromLTRB(0, 7.0, 0, 7.0),
              color: Theme.of(context).accentColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Ready for the day?",
                      style: TextStyle(fontSize: 32.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: _featuresItems
                    .map((it) => GridItem(
                        itemName: it.name,
                        icon: it.icon,
                        onPressed: () =>
                            handlePageChange(context, it.featurePage)))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

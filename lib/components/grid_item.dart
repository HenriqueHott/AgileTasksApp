import 'package:Agile_Tasks_App/components/custom_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef void TitlePressedCallback();

class GridItem extends StatelessWidget {
  GridItem(
      {@required this.itemName, @required this.icon, @required this.onPressed})
      : super();

  final String itemName;
  final TitlePressedCallback onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      onPressed: this.onPressed,
      children: [
        this.icon,
        Text(
          this.itemName,
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        )
      ],);
  }
}

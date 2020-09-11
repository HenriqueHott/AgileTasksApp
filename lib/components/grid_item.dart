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
    return Card(
      color: Theme.of(context).accentColor,
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            Text(
              this.itemName,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            )
          ],
        ),
      ),
    );
  }
}

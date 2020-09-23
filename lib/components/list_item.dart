

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Card(
      color: Theme.of(context).accentColor,
      child: InkWell(
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 4.0, 0, 4.0),
              child: Text(
                  'Titulo',
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 4.0, 0, 4.0),
              child: Text(
                  'Voluptate aliquip duis cupidatat incididunt eu cupidatat magna incididunt tempor. Elit Lorem qui veniam anim labore adipisicing cupidatat. Amet laborum est ad do tempor cillum reprehenderit sint quis aute sit culpa. Cupidatat magna ad labore officia laborum do aliquip tempor qui dolore. Non id sint fugiat ullamco deserunt occaecat enim commodo et enim. Minim consequat ad et esse nisi id. Quis deserunt duis voluptate amet.',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10.0, 0, 4.0),
              child: Text(
                  'Task Progress: 3/10',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
              child: LinearProgressIndicator(
                value: 0.333,
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),   
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class StarLine extends StatelessWidget {
  int starNum = 5;

  StarLine(this.starNum);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: starsMaker(starNum),
    ));
  }

  List<Widget> starsMaker(int num) {
    List<Widget> starList = <Widget>[];
    for (int i = 0; i < num; i++) {
      starList.add(Icon(
        Icons.star_rate,
        color: Colors.yellow,
        size: 20.0,
      ));
    }
    return starList;
  }
}

import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget{
  HeadingWidget(this.textStyle);
  TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 50.0,
        color: Colors.grey[300],
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 15.0, right: 8.0, left: 8.0),
                child: Text(
                  "HEAD TIL" + (index + 1).toString(),
                  style: textStyle,
                ),
              );
            }),
      ),
    );
  }

}
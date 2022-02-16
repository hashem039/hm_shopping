import 'package:flutter/material.dart';

class MainCategory extends StatelessWidget {
  MainCategory(this.textStyle);
  TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) => Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.keyboard_arrow_right),
                ),
              ),
              Text(
                'Main \n Category' + (index + 1).toString(),
                style: textStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MainCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        //shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) => Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 45.0,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.category),
                ),
              ),
              Text(
                'Main \n Category' + (index + 1).toString(),
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

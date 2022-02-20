import 'package:flutter/material.dart';

class HeadLine extends StatelessWidget {
  const HeadLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8.0, left: 8.0),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 4.0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Text('Best practice Definition & Meaning ', style: Theme.of(context).textTheme.subtitle1,/*TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)*/),
              ),
              //new Spacer(),
              Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Shopping'),
                  ),
                  padding: EdgeInsets.only(right: 8.0, left: 8.0)),
            ],
          ),
        ],
      ),
    );
  }
}

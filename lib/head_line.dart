import 'package:flutter/material.dart';

class HeadLine extends StatelessWidget {
  const HeadLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8.0, left: 8.0, bottom: 8.0),
      color: Colors.grey[100],
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 15.0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('Best practice Definition & Meaning ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
              ),
              new Spacer(),
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

import 'package:flutter/material.dart';

class ImageWithFooter extends StatelessWidget {
  const ImageWithFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
                child: Image.asset(
                  'assets/shopping.png',
                  fit: BoxFit.cover,
                )),
          ],
        ),
        Container(
          padding: EdgeInsets.all(4.0),
          color: Colors.white.withOpacity(0.3),
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0, bottom: 2.0, left: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          'video titlep',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                  flex: 0,
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "00.0000",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                Flexible(
                  child: Container(
                    padding: EdgeInsets.all(6.0),
                    //color: Colors.pink,
                    child: Text(
                      "50% Off",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  flex: 0,
                ),
              ],
            ),
          ),
        )
      ],
    );
    /*Stack(
      fit: StackFit.expand,
      children: [
        Image(
          image: AssetImage("assets/shopping.png"),
          fit: BoxFit.fill,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Text('300AED'),
              padding: EdgeInsets.only(right: 8.0, left: 8.0),
            ),
            new Spacer(),
            Container(
                child: Text('60% Off'),
                padding: EdgeInsets.only(right: 8.0, left: 8.0)),
          ],
        ),
      ],
    )*/;
  }
}

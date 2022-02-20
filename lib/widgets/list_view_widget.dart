import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, position) {
        return Column(
          children: <Widget>[
            Stack(
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
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Icon(
                      Icons.account_circle,
                      size: 40.0,
                    ),
                    flex: 2,
                  ),
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
                        Text(
                          'video publisher ',
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    flex: 9,
                  ),
                  Expanded(
                    child: Icon(Icons.more_vert),
                    flex: 1,
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}

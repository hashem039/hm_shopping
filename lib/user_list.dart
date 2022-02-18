import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) => Card(

          /*shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.greenAccent,
                    child: Icon(
                      Icons.person,
                      size: 50,
                    ),
                  )),
              Text(
                '@_user' + (index + 1).toString(),
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

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
        itemBuilder: (BuildContext context, int index) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 120.0,
                  width: 120.0,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.only(right: 8.0,),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 3.0
                    )
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).primaryColor.withOpacity(0.0),
                      ],
                    )
                  ),
                ),
              ],
            ),
            /*const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.greenAccent,
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                )),*/
            Text(
              '@_user' + (index + 1).toString(),
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

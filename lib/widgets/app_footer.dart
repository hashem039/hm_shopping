import 'package:flutter/material.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child:
                      Text("TERM OF USE", style: Theme.of(context).textTheme.headline2),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child:
                  Text("CONTACT", style: Theme.of(context).textTheme.headline2),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child:
                  Text("CAREER", style: Theme.of(context).textTheme.headline2),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child:
                  Text("AREA RANGE", style: Theme.of(context).textTheme.headline2),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: TextButton(
                  onPressed: () {},
                  child: Text("HM App",
                      style: Theme.of(context).textTheme.headline1),
                ),
              ),
              //const SizedBox(width: 100.0,),
              Flexible(
                flex: 0,
                child: TextButton(
                  onPressed: () {},
                  child: Text("PROJECT BY NEURON TECH",
                      style: Theme.of(context).textTheme.headline1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Hello, This is Email Tab", style: Theme.of(context).textTheme.subtitle1,),
    );
  }
}
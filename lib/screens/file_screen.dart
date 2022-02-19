import 'package:flutter/material.dart';

class FileScreen extends StatelessWidget {
  const FileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Hello, This is File Tab", style: Theme.of(context).textTheme.subtitle1,),
    );
  }
}
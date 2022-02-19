import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Hello, This is Shopping Tab", style: Theme.of(context).textTheme.subtitle1,),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:hm_shopping/widgets/sub_category_list.dart';
import 'package:hm_shopping/widgets/user_list.dart';
import '../widgets/product_Service_List.dart';
import '../widgets/app_footer.dart';
import '../widgets/head_line.dart';
import '../widgets/heading_widget.dart';
import '../widgets/image_with_footer.dart';
import '../widgets/main_category.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            HeadingWidget(),
            ImageWithFooter(),
            //// main category part
            HeadLine(),
            ////
            MainCategory(),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                const EdgeInsets.only(top: 15.0, left: 15.0, bottom: 15.0),
                child: Text(
                  '#BEST TITLE',
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            ProductServiceList(),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                const EdgeInsets.only(top: 15.0, left: 15.0, bottom: 15.0),
                child: Text(
                  '#Top TITLE',
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            UserList(),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '#Shop by Category',
                      style: Theme.of(context).textTheme.subtitle1,
                      textAlign: TextAlign.start,
                    ),
                    //new Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text("View All"),
                    ),
                  ],
                ),
              ),
            ),
            SubCategoryList(),
            AppFooter(),
          ],
        ),
      ),
    );
  }

}
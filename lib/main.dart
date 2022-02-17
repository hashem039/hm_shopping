import 'package:flutter/material.dart';
import 'package:hm_shopping/head_line.dart';
import 'package:hm_shopping/image_with_footer.dart';
import 'package:hm_shopping/product_Service_List.dart';
import 'package:hm_shopping/star_line.dart';
import 'package:hm_shopping/sub_category_list.dart';
import 'package:hm_shopping/theme/config.dart';
import 'package:hm_shopping/theme/custom_theme.dart';
import 'package:hm_shopping/user_list.dart';

import 'heading_widget.dart';
import 'main_category.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}): super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      //2
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'USell Up',
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    TextStyle? titleStyle = Theme.of(context).textTheme.subtitle1;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black54,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fire_extinguisher,
              color: Colors.black54,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions,
              color: Colors.black54,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: Colors.black54,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.folder,
              color: Colors.black54,
            ),
            label: "Home",
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      /* Clear the search field */
                    },
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none),
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 8.0),
          child: Text('Uselling UP'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.headphones),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.av_timer),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code_scanner),
          ),
          IconButton(
            icon: const Icon(Icons.brightness_4),
            onPressed: () => currentTheme.toggleTheme(),
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
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
                    const EdgeInsets.only(top: 15.0, left: 15.0, bottom: 15.0),
                child: Row(
                  children: [
                    Text(
                      '#Shop by Category',
                      style: Theme.of(context).textTheme.subtitle1,
                      textAlign: TextAlign.start,
                    ),
                    new Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text("View All"),
                    ),
                  ],
                ),
              ),
            ),
            SubCategoryList(),
          ],
        ),
      ),
    );
  }
}

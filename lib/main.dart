import 'package:flutter/material.dart';
import 'package:hm_shopping/network/http_Service.dart';
import 'package:hm_shopping/screens/album_screen.dart';
import 'package:hm_shopping/screens/app_footer.dart';
import 'package:hm_shopping/screens/head_line.dart';
import 'package:hm_shopping/screens/image_with_footer.dart';
import 'package:hm_shopping/screens/product_Service_List.dart';
import 'package:hm_shopping/screens/sub_category_list.dart';
import 'package:hm_shopping/theme/config.dart';
import 'package:hm_shopping/theme/custom_theme.dart';
import 'package:hm_shopping/screens/user_list.dart';

import 'screens/heading_widget.dart';
import 'screens/main_category.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  void getAlbums() {
    HttpService().getAlbums().then((value) => debugPrint(value.toString())).catchError((e)=>debugPrint(e));
  }
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      //2
      setState(() {});

    });
    getAlbums();
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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List _children = [];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => new AlbumScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    TextStyle? titleStyle = Theme.of(context).textTheme.subtitle1;
    bool _isSearching = false;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
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
            label: "Shopping",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions,
              color: Colors.black54,
            ),
            label: "Gallery",


          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: Colors.black54,
            ),
            label: "Email",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.folder,
              color: Colors.black54,
            ),
            label: "Files",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,

      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: !_isSearching
            ? Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon:  IconButton(
                          icon:  Icon(Icons.search), onPressed: () {
                        },
                        ),
                        suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.headphones,
                                color: Colors.black38,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.av_timer,
                                color: Colors.black38,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                              },
                              icon: Icon(
                                Icons.qr_code_scanner,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                        hintText: 'Search...',
                        border: InputBorder.none),
                    onTap: () {
                    },
                  ),
                ),
              )
            : Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: TextField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: () {
                            /* Clear the search field */
                            setState(() {
                              _isSearching = false;
                            });
                          },
                        ),
                        hintText: 'Search...',
                        border: InputBorder.none),
                  ),
                ),
              ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 15.0),
          child: Text(
            'HM App',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Colors.white),
          ),
        ),
        actions: [
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
            AppFooter(),
          ],
        ),
      ),
    );
  }
}

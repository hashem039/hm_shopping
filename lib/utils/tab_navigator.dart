import 'package:flutter/material.dart';
import 'package:hm_shopping/main.dart';
import 'package:hm_shopping/screens/album_screen.dart';

/*
class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  Widget build(BuildContext context) {

    Widget child ;
    if(tabItem == "Page1")
      child = AlbumScreen("Page1");
    else if(tabItem == "Page2")
      child = AlbumScreen("Page2");
    else if(tabItem == "Page3")
      child = AlbumScreen("Page3");
    else child = AlbumScreen("Page1");

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
            builder: (context) => child
        );
      },
    );
  }
}*/

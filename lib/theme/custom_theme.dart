import 'package:flutter/material.dart';


class CustomTheme with ChangeNotifier{
  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
  static ThemeData get lightTheme { //1
    return ThemeData.light().copyWith( //2
        //primaryColor: Colors.yellow,
        //scaffoldBackgroundColor: Colors.yellowAccent,
        //fontFamily: 'Montserrat', //3
        buttonTheme: ButtonThemeData( // 4
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.yellowAccent,
        ),
      textTheme: const TextTheme(

        subtitle1: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        subtitle2: TextStyle(color: Colors.black, fontSize: 14.0),
        headline1: TextStyle(fontSize: 16.0,fontWeight: FontWeight.normal, color: Colors.black),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        headline2: TextStyle(fontSize: 12.0,fontWeight: FontWeight.normal, color: Colors.black),

      ),

      /*appBarTheme: AppBarTheme(
        color: lightTheme.primaryColor,
      )*/
    );
  }
  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.black,
        //fontFamily: 'Montserrat',
        textTheme: const TextTheme(

          subtitle1: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          subtitle2: TextStyle(color: Colors.white, fontSize: 14.0),
          headline1: TextStyle(fontSize: 16.0,fontWeight: FontWeight.normal, color: Colors.white),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          headline2: TextStyle(fontSize: 12.0,fontWeight: FontWeight.normal, color: Colors.white),

        ),
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.limeAccent,
        )
    );
  }
}
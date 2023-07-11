import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.cyan,
        cardColor: Color.fromARGB(255, 70, 190, 226),
        canvasColor: Color.fromARGB(255, 0, 0, 0),
        
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 6, 177, 211),
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );

  static darkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.grey,
        cardColor: Colors.grey,
        canvasColor: Color.fromARGB(255, 255, 255, 255),
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 48, 48, 48),
          elevation: 0.0,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      );
}
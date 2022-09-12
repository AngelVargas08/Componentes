

import 'package:flutter/material.dart';

class Apptheme{

  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

    primaryColor: primary,
    appBarTheme:  const AppBarTheme(
      color: primary,
      elevation: 0
    ),
        //botones de texto
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary)
    ),
      //botones  flotantes
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5
      ),
      
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.indigo,
        shape: const StadiumBorder(),
        elevation: 0
      ))  

    
  );

    //modo oscuro
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.red,
    appBarTheme: const  AppBarTheme(
      color: primary,
      elevation: 0,
    )

  );
}

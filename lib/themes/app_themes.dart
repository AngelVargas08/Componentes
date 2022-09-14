

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
      ),
      ),
        inputDecorationTheme: const InputDecorationTheme(
            floatingLabelStyle: TextStyle(color: primary),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
            ),
           focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
           ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
          ) 
         )

    
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

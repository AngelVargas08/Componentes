
import 'package:flutter/material.dart';

import 'package:fl_components/screens/screen.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
     // home: const Listview2Screen(),
    initialRoute: 'home',
      routes: {
        'home'        : (BuildContext context) => const HomeScreen(),
        'listview1'   : (BuildContext context) => const Listview1Screen(),
        'listview2'   : (BuildContext context) => const Listview2Screen(),
        'cardscreen'  : (BuildContext context) => const CardScreen(),
        'alertscreen' : (BuildContext context) => const AlertScreen(),
      },
    );
  }
}
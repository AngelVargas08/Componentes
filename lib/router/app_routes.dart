
import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import '../screens/screen.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOptions(route: 'listview1', name: 'List View1', screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOptions(route: 'listview2', name: 'List View2', screen: const Listview2Screen(), icon: Icons.line_style),
    MenuOptions(route: 'cardscreen', name: 'Cards Screen', screen: const CardScreen(), icon: Icons.sd_card_sharp),
    MenuOptions(route: 'alertscreen', name: 'Alert Screen', screen: const AlertScreen(), icon: Icons.crisis_alert_sharp)

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes()  {
      Map<String, Widget Function(BuildContext)> appRoutes = {};

      for (final options in menuOptions) {
        appRoutes.addAll({options.route:(BuildContext context)=>options.screen});
      }

      return appRoutes;
  }

//  static Map<String, Widget Function(BuildContext)> routes = {
          //  'home'        : (BuildContext context) => const HomeScreen(),
      //  'listview1'   : (BuildContext context) => const Listview1Screen(),
      //  'listview2'   : (BuildContext context) => const Listview2Screen(),
      //  'cardscreen'  : (BuildContext context) => const CardScreen(),
      //  'alertscreen' : (BuildContext context) => const AlertScreen(),
     // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context) => const AlertScreen()
      );
  }    

}
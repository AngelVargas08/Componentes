import 'package:fl_components/themes/app_themes.dart';
import 'package:flutter/material.dart';


import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Componentes Flutter'),
          ),
          ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        itemBuilder: (context, i) => ListTile(
          title:   Text(AppRoutes.menuOptions[i].name),
          leading: Icon(AppRoutes.menuOptions[i].icon, color: Apptheme.primary),
          onTap: (){
            Navigator.pushNamed(context, AppRoutes.menuOptions[i].route);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(),
         )
    );
  }
}
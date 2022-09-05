import 'package:flutter/material.dart';


import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Center(
          child: Text('Componentes Flutter'),
          ),
          elevation: 0,
          ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        itemBuilder: (context, i) => ListTile(
          title:   Text(AppRoutes.menuOptions[i].name),
          leading: Icon(AppRoutes.menuOptions[i].icon),
          onTap: (){
            Navigator.pushNamed(context, AppRoutes.menuOptions[i].route);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(),
         )
    );
  }
}
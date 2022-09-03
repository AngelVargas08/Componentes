

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Componentes Flutter'),),
          elevation: 0,
          ),
      body: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(
          title:  const Text('Hola mundo'),
          leading:  const Icon(Icons.ac_unit_sharp),
          onTap: (){

          },
        ), 
        separatorBuilder: (_, __) => const Divider(),
         )
    );
  }
}
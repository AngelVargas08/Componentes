

import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const['Superman','Goku','Freeza','Trunks'];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView11'),
      ),
      body: ListView(
        children: [
          ...options.map((e) => ListTile(
            title: Text(e),
            trailing: const Icon(Icons.arrow_forward_ios_sharp),
          )).toList()
        ],)
    );
  }
}
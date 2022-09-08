

import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   final options = const ['superman','batman','goku','trunks'];
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
                title: const Center(
          child:  Text('Listview2')
          ),
         
        ),
      body: Center(
         child: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,color: Colors.indigo,
              ),
              onTap: (){
               
              },
          ),
          separatorBuilder: (context, index) => const Divider(),
           )
      ),
    );
  }
}
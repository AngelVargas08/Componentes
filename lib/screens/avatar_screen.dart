
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Kakaroto'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child:  CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('KK'),
              //backgroundImage: NetworkImage('https://fondosmil.com/fondo/67457.jpg'),
            ),
          )
            
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 150,
          backgroundImage: NetworkImage('https://fondosmil.com/fondo/67457.jpg'),
         ),
      ),
    );
  }
}


import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

    double _widht = 50;
    double _height = 50;
    Color _color = Colors.amber;
    BorderRadius _borderRadius = BorderRadius.circular(10);

  void animacion() {
      final random = Random();

      _height = random.nextInt(300).toDouble()+70;
      _widht = random.nextInt(300).toDouble()+70;
      _color = Color.fromRGBO(
        random.nextInt(255), 
        random.nextInt(255), 
        random.nextInt(255), 
        1
        );

      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble()+10);
      

      setState(() { });
     
  }  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: (
          const Text('Animación')
          ),
      ),
      body: Center(
         child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOutCubic,
            width: _widht,
            height: _height,
            decoration: BoxDecoration(
               color: _color,
               borderRadius: _borderRadius
            ),
            
            
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: animacion,
        child: const Icon(
          Icons.play_circle_fill_outlined, size: 35,),
        ),
    );
  }
}
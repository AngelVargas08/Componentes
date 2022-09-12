
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title:  const Text('Card  Widgets')
        ),
        
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          children: const  [
            CustomCardType1(),
            SizedBox(height: 20
            ),
            CustomCardImage(img: 'https://fondosmil.com/fondo/65068.jpg', pie: 'pruebas',),
            SizedBox(height: 10,),
            CustomCardImage(img: 'https://fondosmil.com/fondo/67354.jpg', ),
            SizedBox(height: 10,),
            CustomCardImage(img: 'https://fondosmil.com/fondo/67457.jpg',pie: 'Gokuuuuu',)
          ],
      )
    );
  }
}


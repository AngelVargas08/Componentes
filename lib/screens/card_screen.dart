
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
            SizedBox(height: 20),
            CustomCardImage(image:'https://fondosmil.com/fondo/67354.jpg', pie: 'Saske uchija',),
            SizedBox(height: 20),
            CustomCardImage(image: 'https://fondosmil.com/fondo/65068.jpg', ),
            SizedBox(height: 20),
            CustomCardImage(image: 'https://images5.alphacoders.com/587/587597.jpg', ),
            SizedBox(height: 20),
            CustomCardImage(image: 'https://fondosmil.com/fondo/67457.jpg', pie: 'Goku',),
            
          ],
      )
    );
  }
}


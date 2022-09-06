
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
            
          ],
      )
    );
  }
}


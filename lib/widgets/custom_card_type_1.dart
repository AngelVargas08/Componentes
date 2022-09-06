
import 'package:flutter/material.dart';

import 'package:fl_components/themes/app_themes.dart';


class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
           const ListTile(
            leading: Icon(Icons.account_circle, color: Apptheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('Eu quis velit culpa aute nostrud aliqua nostrud occaecat incididunt exercitation dolore cupidatat deserunt Lorem. Consequat do et aliqua exercitation laboris non veniam. Exercitation ad pariatur magna non laborum eiusmod non Lorem occaecat in ullamco quis magna. Do ipsum cupidatat fugiat adipisicing minim reprehenderit proident ullamco occaecat labore elit est pariatur. Fugiat non et do labore id culpa sint. Mollit proident sunt sunt nulla ad eiusmod incididunt duis in.'),    
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                 
                  onPressed: (){}, 
                child: const Text('Cancel')),
                TextButton(
                  onPressed: (){}, 
                child: const Text('ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
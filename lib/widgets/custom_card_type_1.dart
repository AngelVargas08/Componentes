


import 'package:fl_components/themes/app_themes.dart';
import 'package:flutter/material.dart';

class CustomCardType1  extends StatelessWidget {
  const CustomCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only()),
            const ListTile(
            leading: Icon(Icons.accessible_sharp, color: Apptheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('Eu duis excepteur aliquip non pariatur. Velit laborum ex exercitation nostrud sunt sint aliqua irure adipisicing ea ipsum sunt. Eiusmod cillum dolore id deserunt nostrud. Ea tempor in cillum officia minim mollit in exercitation tempor laboris. Laboris est fugiat nulla eu ad proident qui proident.'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     TextButton(
                      onPressed:(){}, 
                      child: const Text('Cancel')
                      ),
                      TextButton(
                      onPressed:(){}, 
                      child: const Text('Ok')
                      )
                  ],
              ),
            )
        ],
      ),
    );
  }
}
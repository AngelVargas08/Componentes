

import 'package:flutter/material.dart';

class CustomCardImage  extends StatelessWidget {
  const CustomCardImage({super.key, required this.img,  this.pie});
    final String img;
    final String? pie; 
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)),
        elevation: 15,
        shadowColor: Colors.blue.withOpacity(0.5),
      child: Column(
        children:  [
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage(img),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
            ),
            if(pie != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(pie!),
            )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';


class CustomCardImage extends StatelessWidget {

    final  String image;
    final String? pie;

  const CustomCardImage({
    super.key, 
    required this.image,
      this.pie
     });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
        ),
      elevation: 20,
      shadowColor: Colors.blue.withOpacity(0.6),
      child: Column(
        children:  [

           FadeInImage(
          placeholder: const AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage(image),
          width: double.infinity,
          height: 260,
          fit: BoxFit.cover,
          fadeInDuration:  const Duration(milliseconds: 700),
          ),

          if(pie !=null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child:  Text( pie!),
          )
        ],
      ),
    );
  }
}
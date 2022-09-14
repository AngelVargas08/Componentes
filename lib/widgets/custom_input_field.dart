

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helpertText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomInputField({
    Key? key, 
    this.hintText,  
    this.labelText,  
    this.helpertText, 
    this.icon, 
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     // autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value){
        //print('value: $value');
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length <3 ? 'Minimo de tres letras': null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:   InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helpertText,
        suffixIcon: suffixIcon == null ? null :  Icon(icon),
        icon: icon == null? null:  Icon(icon),
      
      ),
      
      );
  }
}
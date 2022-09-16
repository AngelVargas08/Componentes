

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helpertText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? textType;
  final bool ispassword;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key, 
    this.hintText,  
    this.labelText,  
    this.helpertText, 
    this.icon, 
    this.suffixIcon,
    this.textType, 
    this.ispassword = false, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     // autofocus: true,
     keyboardType: textType,
     obscureText: ispassword,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value)=>formValues[formProperty]=value,
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
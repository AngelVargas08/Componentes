
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormkey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Angel',
      'last_name' : 'Vargas',
      'email'     : 'Angel@gmail.com',
      'password'  : '123456',
      'role'      : 'Admin',
    };

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormkey,
              child: Column(
                children:  [
                  const CustomInputField(labelText: 'Nombre s',hintText: 'Nombre del usuario',),
                  const SizedBox(height: 30,),
                  const CustomInputField(labelText: 'Apellido',hintText: 'Apellido del usuario',),
                  const SizedBox(height: 30,),
                  const CustomInputField(labelText: 'Correo',hintText: 'Correo electronico',textType: TextInputType.emailAddress,),
                  const SizedBox(height: 30,),
                  const CustomInputField(labelText: 'Contraseña',hintText: 'Contraseña de usuario',ispassword: true,),
                  const SizedBox(height: 30,),
                  
                  ElevatedButton(
                     child: const SizedBox(
                      width: double.infinity,
                      child:  Center(
                        child: Text('Guardar')
                        )
                        ),
                    onPressed: (){
                      FocusScope.of(context).requestFocus(FocusNode());
                     if( !myFormkey.currentState!.validate()){
                      print('Formulario no valido');
                      return;
                     }
                       print(formValues);
                    },)
                ],
              ),
            ),
            ),
      )
    );
  }
}


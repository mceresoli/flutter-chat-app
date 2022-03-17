import 'package:chat/widgets/boton_azul.dart';
import 'package:chat/widgets/custom_imput.dart';
import 'package:chat/widgets/labels.dart';
import 'package:chat/widgets/logo.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height *0.95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Logo(
                  imagen: AssetImage('assets/tag-logo.png'),
                  tamanio: 20,
                  texto: 'Messenger',
                ),
                _Form(),
                Label(ruta: 'register',),
                _Terminos(),
              ],
            ),
          ),
        ),
      )
   );
  }
}


  class _Form extends StatefulWidget {
  
    @override
    State<_Form> createState() => __FormState();
  }
  
  class __FormState extends State<_Form> {

    final emailController = TextEditingController();
    final passController  = TextEditingController();    

    @override
    Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: <Widget>[
             CustomInput(
               icon: Icons.mail_outline ,
               placeholder: 'Email'     , 
               keyboardType: TextInputType.emailAddress, 
               textController: emailController, 
             ),
             CustomInput(
               icon: Icons.lock_outline,
               placeholder: 'Password'     , 
               keyboardType: TextInputType.emailAddress, 
               textController: passController, 
               isPassword: true,
             ),
             BotonAzul(texto: 'Ingrese',onPressed: (){print(emailController.text);},),
          ],
        ),
      );
    }
  }

  class _Terminos extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Text('Terminos y condiciones de uso', style: TextStyle(fontWeight: FontWeight.w200),);
    }
  }
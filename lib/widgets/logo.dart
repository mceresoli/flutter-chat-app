  import 'package:flutter/material.dart';

  class Logo extends StatelessWidget {

  
    final AssetImage imagen;
    final double tamanio;
    final String texto;

  const Logo({
                  Key? key, 
                  required this.imagen, 
                  required this.tamanio, 
                  required this.texto}
                ) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(top:90),
          child: Container(
            width: 170,
            child: Column(
              children: <Widget>[
                 Image(image: this.imagen,),
                 SizedBox(height: 20,),
                 Text(this.texto, style: TextStyle(fontSize: this.tamanio),) 
              ],
            ),
          ),
        ),
      );
    }
  }
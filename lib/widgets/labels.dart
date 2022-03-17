  import 'package:flutter/material.dart';

  import 'package:flutter/material.dart';
  
  class Label extends StatelessWidget {

    final String ruta;

  const Label({
        Key? key, 
        required this.ruta}
        ) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(
          children: <Widget>[
            Text((this.ruta=='register')?'¿No Tienes Cuenta?':'¿Ya Tienes Cuenta?', 
                  style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w300),
                  ),                        
            SizedBox(height: 10,),
            GestureDetector(
              child: Text((this.ruta=='register')?'Crear una cuenta ahora':'Ir al Login',  
                     style: TextStyle(color:Colors.blue[600], fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () { Navigator.pushReplacementNamed(context, this.ruta);}
              ),
          ],
        ),
      );
    }
  }  
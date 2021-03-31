
import 'package:aprende_java/Principal.dart'; 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aprende_java/Widgets/GradientBack.dart';
import 'package:aprende_java/Widgets/ButtonGreen.dart';
import 'package:aprende_java/Usuarios/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


class Login extends StatefulWidget {
 
 @override 
 State createState(){

   return _Login();
 }

}


class _Login extends State <Login>{

//Define la seccion de la persona
UserBloc userBloc;

@override
Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    
    //Construimos el objeto y le damos el 
    //Contexto de la aplicacion
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  /* Esto lo que hace es saber si la
   persona se encuentra conectada o no
   Si esta conectada se pasa a una pestaña
   Si no se lleva a que conecte con google
  */
  Widget _handleCurrentSession(){
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if(!snapshot.hasData || snapshot.hasError) {
          return signInGoogle();
          
        } else {
          return Principal();
        }
      },
    );
}
  
  /*Esto es el widget de conectarse con google
    NO TOQUE NADA SI NO SABE LO QUE HACE 
    Gracias.
   */
  Widget signInGoogle(){
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack(title: "",height: null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("Bienvenido \n",
              style: TextStyle(
                fontSize: 37.0,
                fontFamily: "lato",
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text(" Con esta increible ",
              style: TextStyle(
                fontSize: 37.0,
                fontFamily: "lato",
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text(" app aprenderas java ",
              style: TextStyle(
                fontSize: 37.0,
                fontFamily: "lato",
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              ),
                Text(" en pocos dias. ",
              style: TextStyle(
                fontSize: 37.0,
                fontFamily: "lato",
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              ),
              ButtonGreen(text: "Login with gmail", onPressed: (){
                userBloc.signIn();
              },
              width: 300.0,
              height: 50.0,
              
              )
            ],
          )
          
        ],
        
      ),
    );
  }  
}

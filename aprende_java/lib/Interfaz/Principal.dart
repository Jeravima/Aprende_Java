import 'package:aprende_java/Usuarios/Interfaces/Profilesettings.dart';
import 'package:aprende_java/Usuarios/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:aprende_java/Widgets/GradientBack.dart';
import 'package:aprende_java/Widgets/ButtonGreen.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Principal extends StatefulWidget {
  @override
  State createState() {
    return _Principal();
  }
}

class _Principal extends State<Principal> {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack(height: null),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bienvenido este es la pantalla principal.",
                  style: TextStyle(
                    fontSize: 37.0,
                    fontFamily: "lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //Sirve para la ubicacion de la foto de usuario 
                Positioned(
                  top: 25,
                  right: 50 ,
                  child: Profilesettings()
                  
                  ),
                ButtonGreen(
                  text: "Cerrar sesión",
                  onPressed: () {
                    /* Cuando se toca el boton se cierra la sesion de 
                  la persona y se va a que escoga otra vez la cuenta
                  El metodo de la parte del login mira si esta conectado 
                  hace que vuelva a esa pestaña 
                  */
                    userBloc.signOut();
                  },
                  width: 300.0,
                  height: 50.0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:aprende_java/Usuarios/Interfaces/Profilesettings.dart';
import 'package:aprende_java/Usuarios/bloc/bloc_user.dart';
import 'package:aprende_java/Widgets/GradientBackPrincipal.dart';
import 'package:flutter/material.dart';
import 'package:aprende_java/Widgets/GradientBack.dart';
import 'package:aprende_java/Widgets/ButtonGreen.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Principal extends StatelessWidget {
  UserBloc userBloc;
  double screenWidht;

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    //Sirve para la ubicacion de la foto de usuario
    //sds
    return Scaffold(
        body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack(height: null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Container(
                  width: screenWidht,
                  child: Text(
                    "Bienvenido \n Esta es tu app de java ",
                    style: TextStyle(
                        fontSize: 37.0,
                        fontFamily: "Lato",
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          
            ])]
    ));
    /*User(
          name: snapshot.data.displayName,
          email: snapshot.data.email,
          photoURL: snapshot.data.photoUrl,
          rol: '',
          uid: '');*/
  }
}


// ignore: unused_import
import 'package:aprende_java/Interfaz/Principal.dart';
import 'package:aprende_java/Interfaz/inicio.dart';
import 'package:aprende_java/Interfaz/swipe.dart';
import 'package:aprende_java/Usuarios/Interfaces/login.dart';
import 'package:aprende_java/Usuarios/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  int uwu= 1;
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Aprende java',
          home: //PageOnboardBank(),
          Login(),
        ),
        bloc: UserBloc());
  }
}





// ignore: unused_import
import 'package:aprende_java/Interfaz/Principal.dart';
import 'package:aprende_java/Usuarios/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:aprende_java/Usuarios/Interfaces/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          //home: PlatziTripsCupertino(),
          home: Login(),
        ),
        bloc: UserBloc());
  }
}

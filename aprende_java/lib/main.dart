// ignore: unused_import
import 'package:aprende_java/Principal.dart';
import 'package:aprende_java/Usuarios/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'Usuarios/Interfaces/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
           
        child: MaterialApp(
          title: 'Flutter Demo',
          //home: PlatziTripsCupertino(),
          home: Login(),
        ),
        bloc: UserBloc());
      /*Scaffold(
        appBar: AppBar(
          title: Text('Aprende Java'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ignore: deprecated_member_use
              RaisedButton(
                  child: Text("Pagina Principal"),
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Principal()))
                      })
            ],
          ),
        ),
      ),*/
    
  }
}

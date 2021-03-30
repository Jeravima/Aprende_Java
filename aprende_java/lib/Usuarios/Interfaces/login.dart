
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

UserBloc userBloc;

@override
Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

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
  

  Widget signInGoogle(){
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack(title: "",height: null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("Bienvenido \nCon esta increible app aprenderas java en pocos dias.",
              style: TextStyle(
                fontSize: 37.0,
                fontFamily: "lato",
                color: Colors.blue,
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

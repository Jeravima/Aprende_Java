// ignore: unused_import
import 'package:aprende_java/Principal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aprende_java/Widgets/GradientBack.dart';
import 'package:aprende_java/Widgets/ButtonGreen.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
 
 @override 
 State createState(){

   return _login();
 }

}

// ignore: camel_case_types
class _login extends State<login>{

String hola='hola';
@override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return singInGoogle();
  }

  Widget singInGoogle(){
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

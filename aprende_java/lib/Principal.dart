import 'package:flutter/material.dart';
import 'package:aprende_java/Widgets/GradientBack.dart';
import 'package:aprende_java/Widgets/ButtonGreen.dart';
class Principal extends StatelessWidget {
  const Principal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack(title: "",height: null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("Bienvenido este es la pantalla principal.",
              style: TextStyle(
                fontSize: 37.0,
                fontFamily: "lato",
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              ),
              ButtonGreen(text: "pto", onPressed: (){
                
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

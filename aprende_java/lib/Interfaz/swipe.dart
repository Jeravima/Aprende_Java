import 'package:aprende_java/Usuarios/Interfaces/login.dart';
import 'package:aprende_java/Widgets/ButtonGreen.dart';
import 'package:flutter/material.dart';

import 'package:liquid_swipe/liquid_swipe.dart';

final estiloTexto = TextStyle(fontSize: 20.0, color: Colors.white);

class Swiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LiquidSwipe(
      pages: [
        Container(
          color: Colors.pinkAccent,
          child: Center(
            child: Text('Slide 1', style: estiloTexto),
          ),
        ),
        Container(
          color: Colors.deepPurpleAccent,
          child: Center(
            child: Text('Slide 2', style: estiloTexto),
          ),
        ),
        Container(
          color: Colors.greenAccent,
          child: Center(
            child: Text('Slide 3', style: estiloTexto),
          ),
        ),
        Container(
          color: Colors.blueAccent,
          child: Center(
            child: Text('Slide 4', style: estiloTexto),
          ),
        ),
        Container(
          color: Colors.orangeAccent,
          child: Center(
            child: Text('Slide 5', style: estiloTexto),
          ),
        ),
        Container(
          color: Colors.orangeAccent,
          child: Column(
            children: [
              Text('Slide 5', style: estiloTexto),
              ButtonGreen(
                  text: "Loggearse con google",
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login())),
                      }),
            ],
          ),
        ),
      ],
      fullTransitionValue: 300,
      enableLoop: false,
      enableSlideIcon: true,
      positionSlideIcon: 0.8,
      waveType: WaveType.liquidReveal,
      onPageChangeCallback: (page) => pageChangeCallback(page),
      currentUpdateTypeCallback: (updateType) => updateTypeCallback(updateType),
    ));
  }

  pageChangeCallback(int page) {
    print(page);
  }

  updateTypeCallback(UpdateType updateType) {
    print(updateType);
  }
}

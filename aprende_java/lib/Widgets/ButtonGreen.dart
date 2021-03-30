<<<<<<< HEAD
  import 'package:flutter/material.dart';
  

  // ignore: must_be_immutable
  class ButtonGreen extends StatefulWidget{

    final String text;
    double width= 0.0;
    double height = 0.0;
    final VoidCallback onPressed;

    ButtonGreen({Key key, @required this.text, @required this.onPressed, this.height, this.width});

    // ignore: empty_constructor_bodies
    @override
=======
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonGreen extends StatefulWidget {
  final String text;
  double width = 0.0;
  double height = 0.0;
  final VoidCallback onPressed;

  ButtonGreen(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.height,
      this.width});

  // ignore: empty_constructor_bodies
  @override
>>>>>>> e7901a8a2b0271cc72843524673a0bb6392563a1
  State createState() {
    return _ButtonGreen();
  }
}

class _ButtonGreen extends State<ButtonGreen> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    // ignore: todo
    // TODO: implement build
=======
    
>>>>>>> e7901a8a2b0271cc72843524673a0bb6392563a1
    return InkWell(
        onTap: widget.onPressed,
        child: Container(
          margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                  colors: [
                    Color(0xFFa7ff84), //arriba
                    Color(0xFF1cbb78) //bajo
                  ],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp)),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: "Lato",
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}

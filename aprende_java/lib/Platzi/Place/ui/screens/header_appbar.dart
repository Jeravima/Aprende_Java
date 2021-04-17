import 'package:aprende_java/Platzi/Place/ui/widgets/card_image_list.dart';
import 'package:aprende_java/Platzi/widgets/gradient_back.dart';
import 'package:flutter/material.dart';


class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack(height: 250.0),
        CardImageList()
      ],
    );
  }

}
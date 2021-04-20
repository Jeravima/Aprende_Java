import 'package:aprende_java/Interfaz/home_page.dart';
import 'package:aprende_java/Usuarios/Interfaces/Profilesettings.dart';
import 'package:aprende_java/Widgets/GradientBack.dart';
import 'package:flutter/material.dart';

class PrincipalScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PrincipalScreen();
  }
}

class _PrincipalScreen extends State<PrincipalScreen> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomePage(),
    GradientBack(),
    ProfileHeader()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), title: Text("")),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text(""),
              ),
            ]),
      ),
    );
  }
}

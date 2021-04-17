import 'package:aprende_java/Interfaz/Principal.dart';
import 'package:aprende_java/Interfaz/swipe.dart';
import 'package:aprende_java/Nuevo/home_page.dart';
import 'package:aprende_java/Usuarios/Interfaces/Profilesettings.dart';
import 'package:flutter/material.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [HomePage(), Swiper(),ProfileHeader()];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  void _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));
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

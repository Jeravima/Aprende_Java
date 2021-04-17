import 'package:aprende_java/Nuevo/home_page.dart';
import 'package:aprende_java/Platzi/Place/ui/screens/home_trips.dart';
import 'package:aprende_java/Platzi/Place/ui/screens/search_trips.dart';
import 'package:aprende_java/Platzi/User/bloc/bloc_user.dart';
import 'package:aprende_java/Platzi/User/ui/screens/profile_trips.dart';
import 'package:aprende_java/Platzi/widgets/gradient_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo),
                  title: Text("")
              ),
            ]
        ),

        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) =>HomePage(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => GradientBack(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return BlocProvider<UserBloc>(
                    bloc: UserBloc(),
                    child: ProfileTrips(),
                  );
                },
              );
              break;

          }

        },
      ),
    );
  }

}
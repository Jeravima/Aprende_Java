import 'package:aprende_java/Nuevo/constants.dart';
import 'package:aprende_java/Nuevo/data.dart';
import 'package:aprende_java/Nuevo/detail_page.dart';
import 'package:aprende_java/Nuevo/home_page.dart';
import 'package:aprende_java/Usuarios/Interfaces/Profilesettings.dart';
import 'package:aprende_java/Usuarios/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:aprende_java/Widgets/GradientBack.dart';
import 'package:aprende_java/Widgets/ButtonGreen.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Principal extends StatefulWidget {
  @override
  State createState() {
    return _Principal();
  }
}

class _Principal extends State<Principal> {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack(height: null),

          //Sirve para la ubicacion de la foto de usuario
          //sds
          Positioned(
            top: 20,
            right: 10,
            child: Profilesettings(),
          ),

          Positioned(
              top: 150,
              right: 10,
              child: ButtonGreen(
                text: " ",
                onPressed: () {
                  /* Cuando se toca el boton se cierra la sesion de 
                  la persona y se va a que escoga otra vez la cuenta
                  El metodo de la parte del login mira si esta conectado 
                  hace que vuelva a esa pestaña 

                  */
                  userBloc.signOut();
                },
                width: 50.0,
                height: 50.0,
              ),),

              Container(
                height: 500,
                padding: const EdgeInsets.only(left: 32),

                child: Swiper(
                  itemCount: planets.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder:
                        DotSwiperPaginationBuilder(activeSize: 20, space: 8),
                  
                  ),
                   itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, a, b) => DetailPage(
                              planetInfo: planets[index],
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(height: 100),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 100),
                                      Text(
                                        planets[index].name,
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 44,
                                          color: const Color(0xff47455f),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        'Solar System',
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 23,
                                          color: primaryTextColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 32),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Know more',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 18,
                                              color: secondaryTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: secondaryTextColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Hero(
                            tag: planets[index].position,
                            child: Image.asset(planets[index].iconImage),
                          ),
                          Positioned(
                            right: 24,
                            bottom: 60,
                            child: Text(
                              planets[index].position.toString(),
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 200,
                                color: primaryTextColor.withOpacity(0.08),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                  
              ),
        ]
      
              
                  



        
      ),
    );
    
  }

}

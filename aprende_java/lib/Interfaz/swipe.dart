import 'package:aprende_java/Nuevo/home_page.dart';
import 'package:aprende_java/Usuarios/Interfaces/login.dart';
import 'package:aprende_java/Usuarios/bloc/bloc_user.dart';
import 'package:aprende_java/Usuarios/model/user.dart';
import 'package:aprende_java/Widgets/ButtonGreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final estiloTexto = TextStyle(fontSize: 20.0, color: Colors.white);

class Swipe extends StatefulWidget {
  @override
  _Swipe createState() => _Swipe();
}

class _Swipe extends State<Swipe> {
  /* VARIABLES */
  UserBloc userBloc;
  PageController _controller = PageController(initialPage: 0);
  Color colorFondo = Colors.white;
  
  final liquidPages = [
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
      child: Center(
        child: ButtonGreen(
          text: "Login with gmail",
          onPressed: () {
          
          },
          width: 300.0,
          height: 50.0,
        ),
      ),
    )
  ];

  pageChangeCallback(int page) {
    print(page);
  }

  updateTypeCallback(UpdateType updateType) {
    print(updateType);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    colorFondo = Theme.of(context).brightness == Brightness.dark
        ? Colors.deepPurple
        : Colors.deepPurple[50];
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }
  /* WIDGETS */

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData || snapshot.hasError) {
          return mostar();
        } else {
          return HomePage();
        }
      },
    );
  }

  Widget mostar() {
    return Scaffold(
        body: LiquidSwipe(
      pages: liquidPages,
      fullTransitionValue: 300,
      enableLoop: false,
      enableSlideIcon: true,
      positionSlideIcon: 0.8,
      waveType: WaveType.liquidReveal,
      onPageChangeCallback: (page) => pageChangeCallback(page),
      currentUpdateTypeCallback: (updateType) => updateTypeCallback(updateType),
    ));
  }

  Widget pageButton(
      {@required BuildContext context,
      @required String texto,
      @required String textoButton,
      Color color = Colors.blue,
      Color colorText = Colors.white}) {
    /* Devuelve una vista con un boton central */
    final estiloTitulo = TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black);
    Color colorTexto = colorText == null
        ? Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black
        : colorText;
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Text(texto,
                    style: estiloTitulo, textAlign: TextAlign.center)),
          ],
        ),
      ),
    );
  }

  Widget a() {
    userBloc.signIn().then((FirebaseUser user) {
      userBloc.updateUserData(User(
          uid: user.uid,
          name: user.displayName,
          email: user.email,
          photoURL: user.photoUrl,
          rol: "Estudiante"));
    });
  }
}

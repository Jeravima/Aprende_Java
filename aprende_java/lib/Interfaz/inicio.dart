import 'package:aprende_java/Usuarios/Interfaces/login.dart';
import 'package:aprende_java/Widgets/liquid_pages.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageOnboardBank extends StatefulWidget {
  @override
  _PageOnboardBankState createState() => _PageOnboardBankState();
}

class _PageOnboardBankState extends State<PageOnboardBank> {
  /* VARIABLES */
  PageController _controller = PageController(initialPage: 0);
  Color colorFondo = Colors.white;

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
    return Scaffold(
      backgroundColor: colorFondo,
      body: body(),
      floatingActionButton: SmoothPageIndicator(
          controller: _controller,
          count: 6,
          effect: WormEffect(
              dotColor: Colors.black26,
              activeDotColor: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.deepPurple)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  /* WIDGETS */
  Widget body() {
    return PageView(
      /* Una lista desplazable que funciona página por página. */
      controller: _controller,
      /*  El initialPageparámetro establecido en 0 significa que el primer elemento secundario del widget PageViewse mostrará primero (ya que es un índice basado en cero) */
      pageSnapping: true,
      /* Deslizaiento automatico */
      scrollDirection: Axis.horizontal,
      /* Dirección de deslizamiento */
      children: <Widget>[
        pageInformacion(
            context: context,
            iconData: Icons.phone_android,
            titulo: " Texto predeterminado ",
            subtitulo: " No se que poner"),
        pageInformacion(
            context: context,
            iconData: Icons.account_tree_sharp,
            titulo: " Texto predeterminado.",
            subtitulo: " No se que poner"),
        pageInformacion(
            context: context,
            iconData: Icons.notifications_active,
            titulo: " Texto predeterminado.",
            subtitulo: " No se que poner"),
        pageInformacion(
            context: context,
            iconData: Icons.notifications_active,
            titulo: " Texto predeterminado.",
            subtitulo: " No se que poner"),
        pageInformacion(
            context: context,
            iconData: Icons.notifications_active,
            titulo: " Texto predeterminado.",
            subtitulo: " No se que poner"),
        pageButton(
            context: context,
            color: Colors.deepPurple[700],
            texto: "Bienvenido",
            textoButton: "Iniciar"),
      ],
    );
  }

  /* WIDGETS COMPONENT*/
  Widget pageInformacion(
      {@required BuildContext context,
      AssetImage assetImage,
      IconData iconData,
      Color colorIcon,
      String titulo,
      String subtitulo}) {
    /* Devuelve una vista con contenido centrado */

    /* Definimos los estilos */
    if (colorIcon == null) {
      colorIcon = Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.black;
    }
    final estiloTitulo = TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black);
    final estiloSubTitulo = TextStyle(
        fontSize: 20.0,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white70
            : Colors.black45);

    /* Obtenemos las vavriables de la dimension de la pantalla */
    var screenSize = MediaQuery.of(context).size;

    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Expanded(child: Container()),
          assetImage != null
              ? Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Image(
                      image: assetImage,
                      width: screenSize.width / 2,
                      height: screenSize.height / 2,
                      fit: BoxFit.contain),
                )
              : Container(),
          iconData != null
              ? Container(
                  width: screenSize.width / 2,
                  height: screenSize.height / 2,
                  child: Icon(iconData,
                      size: screenSize.width * 0.25, color: colorIcon))
              : Container(),
          Text(titulo, style: estiloTitulo, textAlign: TextAlign.center),
          SizedBox(height: 12.0),
          Text(subtitulo, style: estiloSubTitulo, textAlign: TextAlign.center),
          SizedBox(height: 12.0),
          Expanded(child: Container()),
        ],
      ),
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
            RaisedButton(
              shape: StadiumBorder(),
              color: color,
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  child: Text(textoButton,
                      style: TextStyle(fontSize: 20.0, color: colorTexto))),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

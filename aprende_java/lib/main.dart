import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aprende Java'),
        ),
        body: 
           ListView(
             children: [
               Container(

                 padding:EdgeInsets.all(5.0) ,
                child: Image.network("https://drive.google.com/file/d/1VRIQrxfI3tu33tYFOdVpArTTenfNYzZs/view?usp=sharing")
          ),
             ],
           ),
        
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(MiTarjetaApp());

class MiTarjetaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tarjetas de PEDRO PICASSO'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
            ], //fin widget appbar[]
          ), //fin appbar
          body: Container(
            child: ListView(
              children: <Widget>[
                _items('https://raw.githubusercontent.com/PedroPicasso3534/MisFotos/main/FotoPresentacion.jpg', 'Pedro Picasso'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://raw.githubusercontent.com/PedroPicasso3534/MisFotos/main/videojuegos-aprendizaje-2.png', 'VideoJuegos'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://raw.githubusercontent.com/PedroPicasso3534/MisFotos/main/descarga.jpg', 'Comida Favorita'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://raw.githubusercontent.com/PedroPicasso3534/MisFotos/main/1200px-Star_Wars_Logo.svg.png', 'Mejor Saga'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://raw.githubusercontent.com/PedroPicasso3534/MisFotos/main/descarga%20(1).jpg', 'Mejor Lugar'),
                SizedBox(
                  height: 5.0,
                )
              ], //fin de widget del list view[]
            ), //fin de listview
          ), //fin de container
        ) //fin de scaffold
        ); //fin de materialapp
  } //fin de widget en mitarjetaapp

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.amber,
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('IOS ACTIVIDAD 5', style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} //fin de clase mitarjetaapp
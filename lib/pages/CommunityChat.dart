import 'package:flutter/material.dart';

class CommunityChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[200], // Color de fondo del contenedor
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Community Chat',
            style: TextStyle(color: Colors.black), // Color del texto en la barra de aplicación
          ),
          backgroundColor: Colors.white, // Color de fondo de la barra de aplicación
        ),
        body: Center(
          child: Text(
            'Pantalla de chat de comunidad',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Estilo del texto en el cuerpo del chat
          ),
        ),
      ),
    );
  }
}

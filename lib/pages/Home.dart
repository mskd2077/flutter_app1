import 'package:flutter/material.dart';
import 'package:fapp1/pages/CommunityChat.dart';
import 'package:fapp1/pages/OptionsPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return Text('Página 1');
      case 1:
        return Text('Página 2');
      case 2:
        return CommunityChat(); 
      default:
        return OptionsPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[200], // Color de fondo del body
        ),
        child: Center(
          child: _getPage(_selectedIndex),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 35, 156, 255), // Color de fondo del BottomNavigationBar
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Color.fromARGB(255, 158, 158, 158),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.terrain),
              label: 'Montañas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Comunidad',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Opciones',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

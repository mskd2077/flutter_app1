import 'package:flutter/material.dart';

enum NavigationType { linear, roulette }

class OptionsPage extends StatefulWidget {
  @override
  _OptionsPageState createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage> {
  NavigationType _selectedNavigationType = NavigationType.linear;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración de Navegación'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Seleccione el Tipo de Navegación:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.8, // Ancho del contenedor ajustado
                child: DropdownButtonFormField(
                  value: _selectedNavigationType,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      value: NavigationType.linear,
                      child: Text('Navegación Lineal'),
                    ),
                    DropdownMenuItem(
                      value: NavigationType.roulette,
                      child: Text('Navegación en Ruleta'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _selectedNavigationType = value as NavigationType;
                    });
                  },
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context); // Cierra la pantalla de opciones
                },
                icon: Icon(Icons.exit_to_app),
                label: Text(
                  'Salir',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

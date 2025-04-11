import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inicio',
          style: TextStyle(
            fontSize: 40, // Tamaño de letra 20
            fontWeight: FontWeight.bold, // Grosor normal
          ),
        ),
        centerTitle: true, // Centrar el título
        backgroundColor: Color(0xff7dc2f9), // Fondo azulado claro
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
          children: [
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 2
                Navigator.pushNamed(context, '/widget1');
              },
              child: const Text('Widget 1'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // Tamaño del botón
              ), // Este paréntesis faltaba
            ),
            const SizedBox(height: 20), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 3
                Navigator.pushNamed(context, '/widget2');
              },
              child: const Text('Widget 2'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // Mismo tamaño que el otro botón
              ), // Este paréntesis faltaba
            ),
            const SizedBox(height: 20), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 3
                Navigator.pushNamed(context, '/widget3');
              },
              child: const Text('Widget 3'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // Mismo tamaño que el otro botón
              ), // Este paréntesis faltaba
            ),
            const SizedBox(height: 20), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 3
                Navigator.pushNamed(context, '/widget4');
              },
              child: const Text('Widget 4'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // Mismo tamaño que el otro botón
              ), // Este paréntesis faltaba
            ),
            const SizedBox(height: 20), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 3
                Navigator.pushNamed(context, '/widget5');
              },
              child: const Text('Widget 5'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // Mismo tamaño que el otro botón
              ), // Este paréntesis faltaba
            ),
            const SizedBox(height: 20), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 3
                Navigator.pushNamed(context, '/widget6');
              },
              child: const Text('Widget 6'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // Mismo tamaño que el otro botón
              ), // Este paréntesis faltaba
            ),
          ],
        ),
      ),
    );
  }
}

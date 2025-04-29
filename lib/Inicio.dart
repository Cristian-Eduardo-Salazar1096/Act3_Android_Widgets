import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inicio Widgets',
          style: TextStyle(
            fontSize: 30, // Tamaño de letra 20
            fontWeight: FontWeight.normal, // Grosor normal
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
                Navigator.pushNamed(context, '/widget12');
              },
              child: const Text('Widget 12'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40), // Tamaño del botón
              ), // Este paréntesis faltaba
            ),
            const SizedBox(height: 15), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 3
                Navigator.pushNamed(context, '/widget13');
              },
              child: const Text('Widget 13'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40), // Mismo tamaño que el otro botón
              ), // Este paréntesis faltaba
            ),
            const SizedBox(height: 15), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 3
                Navigator.pushNamed(context, '/widget14');
              },
              child: const Text('Widget 14'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40), // Mismo tamaño que el otro botón
              ), // Este paréntesis faltaba
            ),
            const SizedBox(height: 15), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 3
                Navigator.pushNamed(context, '/widget15');
              },
              child: const Text('Widget 15'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40), // Mismo tamaño que el otro botón
              ), // Este paréntesis faltaba
            ),
            const SizedBox(height: 15), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 3
                Navigator.pushNamed(context, '/widget16');
              },
              child: const Text('Widget 16'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40), // Mismo tamaño que el otro botón
              ), // Este paréntesis faltaba
            ),
            const SizedBox(height: 15), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 3
                Navigator.pushNamed(context, '/widget17');
              },
              child: const Text('Widget 17'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40), // Mismo tamaño que el otro botón
              ), // Este paréntesis faltaba
            ),
            const SizedBox(height: 15), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 3
                Navigator.pushNamed(context, '/widget18');
              },
              child: const Text('Widget 18'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40), // Mismo tamaño que el otro botón
              ), // Este paréntesis faltaba
            ),
            const SizedBox(height: 15), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 3
                Navigator.pushNamed(context, '/widget19');
              },
              child: const Text('Widget 19'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40), // Mismo tamaño que el otro botón
              ), // Este paréntesis faltaba
            ),
            const SizedBox(height: 15), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 3
                Navigator.pushNamed(context, '/widget20');
              },
              child: const Text('Widget 20'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40), // Mismo tamaño que el otro botón
              ), // Este paréntesis faltaba
            ),
            const SizedBox(height: 15), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla 3
                Navigator.pushNamed(context, '/widget21');
              },
              child: const Text('Widget 21'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40), // Mismo tamaño que el otro botón
              ), // Este paréntesis faltaba
            ),
          ],
        ),
      ),
    );
  }
}

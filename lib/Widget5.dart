import 'package:flutter/material.dart';
import 'dart:ui';

class Widget5 extends StatelessWidget {
  const Widget5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Widget 5',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff538dbc),
      ),
      body: const Widget024(),
    );
  }
}

class Widget024 extends StatelessWidget {
  const Widget024({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Contenido de fondo que será desenfocado
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  '0' * 10000,
                  style: const TextStyle(
                    color: Color(0xff0011ff),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 60), // Espacio para el botón
              ],
            ),
          ),
        ),

        // Efecto de desenfoque
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          child: Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 8.0,
                  sigmaY: 8.0,
                ),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.01),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Efecto Blur',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

        // Botón Regresar
        Positioned(
          bottom: 40,
          left: 0,
          right: 0,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Regresar!'),
            ),
          ),
        ),
      ],
    );
  }
}

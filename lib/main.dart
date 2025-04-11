import 'package:flutter/material.dart';
import 'package:SalazarWidgets/Inicio.dart';
import 'package:SalazarWidgets/Widget1.dart';
import 'package:SalazarWidgets/Widget2.dart';
import 'package:SalazarWidgets/Widget3.dart';
import 'package:SalazarWidgets/Widget4.dart';
import 'package:SalazarWidgets/Widget5.dart';
import 'package:SalazarWidgets/Widget6.dart';

void main() => runApp(MiWidget());

class MiWidget extends StatelessWidget {
  const MiWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Inicio(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/widget1': (context) => const Widget1(),
        '/widget2': (context) => const Widget2(),
        '/widget3': (context) => const Widget3(),
        '/widget4': (context) => const Widget4(),
        '/widget5': (context) => const Widget5(),
        '/widget6': (context) => const Widget6(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:SalazarWidgets/Inicio.dart';
import 'package:SalazarWidgets/Widget12.dart';
import 'package:SalazarWidgets/Widget13.dart';
import 'package:SalazarWidgets/Widget14.dart';
import 'package:SalazarWidgets/Widget15.dart';
import 'package:SalazarWidgets/Widget16.dart';
import 'package:SalazarWidgets/Widget17.dart';
import 'package:SalazarWidgets/Widget18.dart';
import 'package:SalazarWidgets/Widget19.dart';
import 'package:SalazarWidgets/Widget20.dart';
import 'package:SalazarWidgets/Widget21.dart';

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
        '/widget12': (context) => const Widget011(),
        '/widget13': (context) => const Widget12(),
        '/widget14': (context) => const Widget013(),
        '/widget15': (context) => const Widget014(),
        '/widget16': (context) => const Widget015(),
        '/widget17': (context) => const Widget016(),
        '/widget18': (context) => const Widget017(),
        '/widget19': (context) => const Widget018(),
        '/widget20': (context) => const Widget019(),
        '/widget21': (context) => const Widget020(),
      },
    );
  }
}

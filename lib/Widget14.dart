import 'package:flutter/material.dart';

//! AnimatedOpacity

class Widget014 extends StatefulWidget {
  const Widget014({Key? key}) : super(key: key);

  @override
  State<Widget014> createState() => Widget014State();
}

class Widget014State extends State<Widget014> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Widget 14',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff538dbc),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  AnimatedOpacity(
                    opacity: opacityLevel,
                    duration: const Duration(seconds: 2),
                    child: const FlutterLogo(
                      size: 50,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    child: const Text('Fade Logo'),
                    onPressed: () {
                      setState(
                        () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
              child: Text('Regresar!'),
            ),
          ),
        ],
      ),
    );
  }
}

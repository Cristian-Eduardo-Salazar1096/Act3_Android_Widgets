import 'package:flutter/material.dart';

//! AnimatedPadding

class Widget015 extends StatefulWidget {
  const Widget015({Key? key}) : super(key: key);

  @override
  State<Widget015> createState() => _Widget015State();
}

class _Widget015State extends State<Widget015> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Widget 16',
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
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                    ),
                    child: const Text('Change padding'),
                    onPressed: () {
                      setState(() {
                        padValue = padValue == 0.0 ? 100.0 : 0.0;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  Text('Padding = $padValue'),
                  const SizedBox(height: 20),
                  AnimatedPadding(
                    padding: EdgeInsets.all(padValue),
                    duration: const Duration(seconds: 2),
                    curve: Curves.easeInOut,
                    child: Container(
                      width: MediaQuery.of(context).size.width *
                          0.8, // Reduje el ancho para mejor visualización
                      height: MediaQuery.of(context).size.height / 4,
                      color: Colors.orangeAccent,
                    ),
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

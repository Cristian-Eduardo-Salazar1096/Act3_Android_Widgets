import 'package:flutter/material.dart';

//! AnimatedDefaultTextStyle

class Widget3 extends StatefulWidget {
  const Widget3({Key? key}) : super(key: key);

  @override
  State<Widget3> createState() => _Widget3State();
}

class _Widget3State extends State<Widget3> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Widget 3',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff538dbc),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            Text('Padding = $padValue'),
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.orangeAccent,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
              child: Text('Regresar!'),
            ),
          ],
        ),
      ),
    );
  }
}

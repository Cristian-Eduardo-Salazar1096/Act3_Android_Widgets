import 'package:flutter/material.dart';

class Widget1 extends StatelessWidget {
  const Widget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Widget 1',
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120.0,
              width: double.infinity,
              color: Colors.blueGrey,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
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

import 'package:flutter/material.dart';

//! AnimatedSize

class Widget019 extends StatefulWidget {
  const Widget019({Key? key}) : super(key: key);

  @override
  State<Widget019> createState() => _Widget019State();
}

class _Widget019State extends State<Widget019> {
  double _size = 300;
  bool _isLarge = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Widget 20',
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
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _size = _isLarge ? 100 : 300;
                    _isLarge = !_isLarge;
                  });
                },
                child: Container(
                  color: Colors.white,
                  child: AnimatedSize(
                    curve: Curves.easeIn,
                    duration: const Duration(seconds: 1),
                    child: FlutterLogo(
                      size: _size,
                      style: _isLarge
                          ? FlutterLogoStyle.horizontal
                          : FlutterLogoStyle.stacked,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  onPressed: () {
                    setState(() {
                      _size = _isLarge ? 100 : 300;
                      _isLarge = !_isLarge;
                    });
                  },
                  child: Text(
                    _isLarge ? 'Reducir' : 'Ampliar',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text('Regresar', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
